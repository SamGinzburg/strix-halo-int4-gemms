	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v9, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_load_b32 s12, s[0:1], 0x88
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 2, v0
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v45, 1, v0
	s_mov_b32 s44, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s14, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s13, s14, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s14, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s13, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s42, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v43, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s12, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s4, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x800
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s5, s41, s2
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 63
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s4, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s5, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s68, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s55, s68
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s14, v46
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v1, s13, v46, 1
	.loc	1 759 0                         ; attention.py:759
	v_and_b32_e32 v4, 0x78, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v10, 3, v9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_dual_mov_b32 v14, 0x7632 :: v_dual_lshlrev_b32 v33, 4, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v6, 24, v44
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v79, 62, v5
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_bfe_i32 v16, v0, 3, 1
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_lshlrev_b32 v7, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v18, v46, 5, v6
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v48, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v16, 0x410, v16, v2
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s69, s3, 11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v11, v1, s[56:59], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v12, 16, v0
	v_lshlrev_b32_e32 v15, 4, v9
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v17, 1, v4
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s43, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v5, v1
	v_cmp_eq_u32_e64 s2, 0, v12
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 8, v18
	v_xor_b32_e32 v20, 16, v18
	v_dual_mov_b32 v133, v1 :: v_dual_add_nc_u32 v82, 0, v18
	v_cndmask_b32_e64 v12, 0x1054, v13, s2
	v_xor_b32_e32 v13, v15, v4
	v_lshl_or_b32 v15, v2, 6, v15
	v_xor_b32_e32 v18, 24, v18
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v107, 0, v19
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v88, v9, 10, v13
	v_xor_b32_e32 v13, v16, v15
	v_and_b32_e32 v8, 24, v0
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v109, 0, v18
	v_and_b32_e32 v12, 0x540054, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v110, v9, 7, v13
	v_xor_b32_e32 v15, 0x120, v88
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v80, s12, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v9, v12, 4, v12
	v_xor_b32_e32 v81, v7, v8
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v57, 18, v48
	v_or_b32_e32 v58, 20, v48
	v_or_b32_e32 v59, 22, v48
	v_and_b32_e32 v119, 0x5040504, v9
	v_xor_b32_e32 v21, 8, v81
	v_or_b32_e32 v60, 24, v48
	v_or_b32_e32 v61, 26, v48
	v_or_b32_e32 v62, 28, v48
	v_or_b32_e32 v63, 30, v48
	v_or_b32_e32 v64, 32, v48
	v_or_b32_e32 v65, 34, v48
	v_or_b32_e32 v66, 36, v48
	v_or_b32_e32 v67, 38, v48
	v_or_b32_e32 v68, 40, v48
	v_or_b32_e32 v69, 42, v48
	v_or_b32_e32 v70, 44, v48
	v_or_b32_e32 v71, 46, v48
	v_or_b32_e32 v72, 48, v48
	v_or_b32_e32 v73, 50, v48
	v_or_b32_e32 v74, 52, v48
	v_or_b32_e32 v75, 54, v48
	v_or_b32_e32 v76, 56, v48
	v_or_b32_e32 v77, 58, v48
	v_or_b32_e32 v78, 60, v48
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v111, 0, v21
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v83, 0x800, v17
	v_xor_b32_e32 v16, 0x1b0, v88
	v_xor_b32_e32 v18, 0x2d0, v88
	v_xor_b32_e32 v19, 0x360, v88
	v_xor_b32_e32 v12, 16, v110
	v_xor_b32_e32 v13, 32, v110
	v_xor_b32_e32 v21, 48, v110
	v_xor_b32_e32 v22, 64, v110
	v_xor_b32_e32 v23, 0x50, v110
	v_xor_b32_e32 v24, 0x60, v110
	v_xor_b32_e32 v25, 0x70, v110
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v47, 1, v0
	v_or_b32_e32 v49, 2, v48
	v_or_b32_e32 v50, 4, v48
	v_or_b32_e32 v51, 6, v48
	v_or_b32_e32 v52, 8, v48
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v54, 12, v48
	v_or_b32_e32 v55, 14, v48
	v_or_b32_e32 v56, 16, v48
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s42, v33
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v7, v1
	v_or_b32_e32 v84, s69, v57
	v_or_b32_e32 v85, s69, v58
	v_or_b32_e32 v86, s69, v59
	v_or_b32_e32 v87, s69, v60
	v_or_b32_e32 v89, s69, v61
	v_or_b32_e32 v90, s69, v62
	v_or_b32_e32 v91, s69, v63
	v_or_b32_e32 v92, s69, v64
	v_or_b32_e32 v93, s69, v65
	v_or_b32_e32 v94, s69, v66
	v_or_b32_e32 v95, s69, v67
	v_or_b32_e32 v96, s69, v68
	v_or_b32_e32 v97, s69, v69
	v_or_b32_e32 v98, s69, v70
	v_or_b32_e32 v99, s69, v71
	v_or_b32_e32 v100, s69, v72
	v_or_b32_e32 v101, s69, v73
	v_or_b32_e32 v102, s69, v74
	v_or_b32_e32 v103, s69, v75
	v_or_b32_e32 v104, s69, v76
	v_or_b32_e32 v105, s69, v77
	v_or_b32_e32 v106, s69, v78
	v_add_nc_u32_e32 v114, 0, v16
	v_add_nc_u32_e32 v116, 0, v18
	v_add_nc_u32_e32 v117, 0, v19
	v_add_nc_u32_e32 v120, 0, v12
	v_add_nc_u32_e32 v121, 0, v13
	v_add_nc_u32_e32 v122, 0, v21
	v_add_nc_u32_e32 v123, 0, v22
	v_add_nc_u32_e32 v125, 0, v23
	v_add_nc_u32_e32 v126, 0, v24
	v_add_nc_u32_e32 v127, 0, v25
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s70, s43, 1
	s_mul_i32 s71, s43, 3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s60, s10
	s_mov_b32 s64, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s61, s11
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[34:35], null, s43, v17, v[10:11]
	v_cndmask_b32_e64 v10, 0x3276, v14, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_xor_b32_e32 v14, 0x90, v88
	v_xor_b32_e32 v17, 0x240, v88
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v112, 0, v14
	v_and_b32_e32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v10, 4, v10
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v11
	v_add_nc_u32_e32 v113, 0, v15
	v_and_b32_e32 v128, 0x7060706, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v124, s2, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v108, 0, v20
	v_xor_b32_e32 v20, 0x3f0, v88
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v130, v124 :: v_dual_add_nc_u32 v115, 0, v17
	v_mov_b32_e32 v129, v124
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[35:36], v82
	ds_load_b64 v[37:38], v107
	ds_load_b64 v[39:40], v108
	ds_load_b64 v[41:42], v109
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v131, v124 :: v_dual_add_nc_u32 v118, 0, v20
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s5, s55, s69
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v47
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[19:20], null, s5, s43, v[34:35]
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v20, s5, v47
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s55, v83
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s4, s55, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v20, s42, v[33:34]
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s4, s0, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v15, s50 :: v_dual_lshlrev_b32 v18, 1, v19
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v21, v19, s43, 1
	v_add_lshl_u32 v22, v19, s70, 1
	v_add_lshl_u32 v19, v19, s71, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s1, s2
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v10, s45 :: v_dual_add_nc_u32 v17, 0, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v30, 0x80000000, v18, s2
	v_cndmask_b32_e64 v217, 0x80000000, v21, s2
	v_cndmask_b32_e64 v23, 0x80000000, v19, s2
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v20, s[56:59], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v16, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v25, s55, v48
	v_or_b32_e32 v149, s69, v52
	v_or_b32_e32 v147, s69, v50
	v_or_b32_e32 v148, s69, v51
	v_or_b32_e32 v150, s69, v53
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, 0x800, v25
	v_or_b32_e32 v151, s69, v54
	v_or_b32_e32 v152, s69, v55
	v_or_b32_e32 v153, s69, v56
	v_or_b32_e32 v134, s69, v48
	v_or_b32_e32 v135, s69, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v209, v94, s55, 1
	v_add_lshl_u32 v167, v84, s55, 1
	v_add_lshl_u32 v210, v95, s55, 1
	v_add_lshl_u32 v149, v149, s55, 1
	v_add_lshl_u32 v211, v96, s55, 1
	v_add_lshl_u32 v212, v97, s55, 1
	v_add_lshl_u32 v174, v85, s55, 1
	v_add_lshl_u32 v202, v86, s55, 1
	v_add_lshl_u32 v203, v87, s55, 1
	v_add_lshl_u32 v204, v89, s55, 1
	v_add_lshl_u32 v206, v91, s55, 1
	v_add_lshl_u32 v207, v92, s55, 1
	v_add_lshl_u32 v213, v98, s55, 1
	v_add_lshl_u32 v214, v99, s55, 1
	v_add_lshl_u32 v215, v100, s55, 1
	v_add_lshl_u32 v216, v101, s55, 1
	v_add_lshl_u32 v147, v147, s55, 1
	v_add_lshl_u32 v148, v148, s55, 1
	v_add_lshl_u32 v150, v150, s55, 1
	v_add_lshl_u32 v151, v151, s55, 1
	v_add_lshl_u32 v152, v152, s55, 1
	v_add_lshl_u32 v153, v153, s55, 1
	v_add_lshl_u32 v205, v90, s55, 1
	v_add_lshl_u32 v208, v93, s55, 1
	v_add_lshl_u32 v134, v134, s55, 1
	v_add_lshl_u32 v135, v135, s55, 1
	v_cndmask_b32_e64 v147, 0x80000000, v147, s8
	v_cndmask_b32_e64 v148, 0x80000000, v148, s8
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v25, v80
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v134, 0x80000000, v134, s8
	v_cndmask_b32_e64 v135, 0x80000000, v135, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v25, s55, v79
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s73, vcc_lo, s8
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v111, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[170:173], v22, s[64:67], 0 offen
	buffer_load_b128 v[17:20], v23, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[21:24], v82 offset1:1
	ds_load_2addr_stride64_b64 v[26:29], v82 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[162:165], v107 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[198:201], v30, s[64:67], 0 offen
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v25, v80
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v25, s55, v78
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v25, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v25, s55, v77
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v25, v80
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v25, s55, v76
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[21:22], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[28:29], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[26:27], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[23:24], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v107 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v108 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[164:165], v[37:38], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[162:163], v[37:38], v[182:189] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v165, 0x80000000, v209, s8
	v_cndmask_b32_e64 v162, 0x80000000, v204, s8
	v_cndmask_b32_e64 v164, 0x80000000, v207, s8
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v25, v80
	v_mov_b32_e32 v25, v132
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[9:10], v[37:38], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[11:12], v[37:38], v[190:197] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v108 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[15:16], v[39:40], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[13:14], v[39:40], v[182:189] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v109 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[9:10], v[39:40], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[11:12], v[39:40], v[190:197] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v109 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[13:14], v[41:42], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[15:16], v[41:42], v[190:197] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v13, v136
	v_cvt_f32_i32_e32 v144, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v145, v197
	v_cvt_f32_i32_e32 v168, v191
	v_cvt_f32_i32_e32 v16, v137
	v_cvt_f32_i32_e32 v26, v139
	v_cvt_f32_i32_e32 v27, v138
	v_cvt_f32_i32_e32 v31, v141
	v_cvt_f32_i32_e32 v166, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v192, 0x80000000, v153, s8
	v_cndmask_b32_e64 v153, 0x80000000, v206, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v28, v142
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[11:12], v[41:42], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[9:10], v[41:42], v[182:189] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v217, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v143
	v_cvt_f32_i32_e32 v30, v140
	v_cvt_f32_i32_e32 v175, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v155, v103, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v176, v154
	v_cvt_f32_i32_e32 v169, v156
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v154, v102, s55, 1
	v_add_lshl_u32 v156, v104, s55, 1
	v_cndmask_b32_e64 v195, 0x80000000, v155, s8
	v_add_lshl_u32 v155, v106, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v157
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v157, v105, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v136, v158
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v158, 0x80000000, v149, s8
	v_cndmask_b32_e64 v197, 0x80000000, v155, s8
	v_add_lshl_u32 v155, s5, v79, 1
	v_cndmask_b32_e64 v149, 0x80000000, v167, s8
	v_cndmask_b32_e64 v167, 0x80000000, v210, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v137, v160
	v_cvt_f32_i32_e32 v138, v159
	v_cvt_f32_i32_e32 v139, v161
	v_cvt_f32_i32_e32 v141, v183
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v159, 0x80000000, v150, s8
	v_cndmask_b32_e64 v160, 0x80000000, v151, s8
	v_cndmask_b32_e64 v161, 0x80000000, v152, s8
	v_cndmask_b32_e64 v150, 0x80000000, v174, s8
	v_cndmask_b32_e64 v151, 0x80000000, v202, s8
	v_cndmask_b32_e64 v152, 0x80000000, v203, s8
	v_cndmask_b32_e64 v174, 0x80000000, v215, s8
	v_cndmask_b32_e64 v183, 0x80000000, v216, s8
	v_cndmask_b32_e64 v154, 0x80000000, v154, s8
	v_cndmask_b32_e64 v156, 0x80000000, v156, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v143, v182
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v181, v185
	v_cvt_f32_i32_e32 v180, v186
	v_cvt_f32_i32_e32 v179, v187
	v_cvt_f32_i32_e32 v178, v188
	v_cvt_f32_i32_e32 v177, v189
	v_cvt_f32_i32_e32 v163, v193
	v_cvt_f32_i32_e32 v146, v194
	v_cvt_f32_i32_e32 v142, v196
	v_cvt_f32_i32_e32 v140, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v193, 0x80000000, v205, s8
	v_cndmask_b32_e64 v194, 0x80000000, v208, s8
	v_cndmask_b32_e64 v196, 0x80000000, v157, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v145, v130, v145 :: v_dual_mul_f32 v26, v131, v26
	v_dual_mul_f32 v143, v131, v143 :: v_dual_mul_f32 v136, v129, v136
	v_mul_f32_e32 v140, v124, v140
	v_mul_f32_e32 v138, v130, v138
	v_mul_f32_e32 v32, v124, v32
	v_mul_f32_e32 v146, v131, v146
	v_mul_f32_e32 v142, v129, v142
	v_mul_f32_e32 v144, v124, v144
	v_mul_f32_e32 v28, v130, v28
	v_dual_mul_f32 v163, v130, v163 :: v_dual_mul_f32 v30, v124, v30
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v191.l, v170.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v191.h, v17.l
	v_mov_b16_e64 v17.l, v170.h
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v170, 0x80000000, v211, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v24.l, v171.l
	v_mov_b16_e32 v24.h, v18.l
	v_mov_b16_e64 v18.l, v171.h
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v171, 0x80000000, v212, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v22.l, v172.l
	v_mov_b16_e32 v22.h, v19.l
	v_mov_b16_e32 v15.h, v20.l
	v_mov_b16_e64 v20.l, v173.h
	v_mov_b16_e64 v19.l, v172.h
	v_mov_b16_e64 v15.l, v173.l
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v172, 0x80000000, v213, s8
	v_cndmask_b32_e64 v173, 0x80000000, v214, s8
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v190.l, v198.l
	v_mov_b16_e64 v23.l, v199.l
	v_mov_b16_e64 v21.l, v200.l
	v_mov_b16_e64 v14.l, v201.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v190.h, v9.l
	v_mov_b16_e64 v9.l, v198.h
	v_mov_b16_e32 v23.h, v10.l
	v_mov_b16_e64 v10.l, v199.h
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v198, 0x80000000, v155, s8
	s_clause 0x1f
	buffer_load_u16 v199, v165, s[60:63], 0 offen
	buffer_load_u16 v189, v167, s[60:63], 0 offen
	buffer_load_u16 v188, v170, s[60:63], 0 offen
	buffer_load_u16 v187, v171, s[60:63], 0 offen
	buffer_load_u16 v186, v172, s[60:63], 0 offen
	buffer_load_u16 v185, v173, s[60:63], 0 offen
	buffer_load_u16 v184, v174, s[60:63], 0 offen
	buffer_load_u16 v183, v183, s[60:63], 0 offen
	buffer_load_u16 v174, v154, s[60:63], 0 offen
	buffer_load_u16 v173, v149, s[60:63], 0 offen
	buffer_load_u16 v172, v150, s[60:63], 0 offen
	buffer_load_u16 v171, v151, s[60:63], 0 offen
	buffer_load_u16 v170, v152, s[60:63], 0 offen
	buffer_load_u16 v167, v153, s[60:63], 0 offen
	buffer_load_u16 v165, v164, s[60:63], 0 offen
	buffer_load_u16 v150, v134, s[60:63], 0 offen
	buffer_load_u16 v151, v135, s[60:63], 0 offen
	buffer_load_u16 v149, v147, s[60:63], 0 offen
	buffer_load_u16 v152, v148, s[60:63], 0 offen
	buffer_load_u16 v147, v158, s[60:63], 0 offen
	buffer_load_u16 v148, v159, s[60:63], 0 offen
	buffer_load_u16 v153, v160, s[60:63], 0 offen
	buffer_load_u16 v154, v161, s[60:63], 0 offen
	buffer_load_u16 v164, v162, s[60:63], 0 offen
	buffer_load_u16 v162, v193, s[60:63], 0 offen
	buffer_load_u16 v155, v192, s[60:63], 0 offen
	buffer_load_u16 v161, v194, s[60:63], 0 offen
	buffer_load_u16 v157, v195, s[60:63], 0 offen
	buffer_load_u16 v158, v156, s[60:63], 0 offen
	buffer_load_u16 v156, v196, s[60:63], 0 offen
	buffer_load_u16 v160, v197, s[60:63], 0 offen
	buffer_load_u16 v159, v198, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v134, 0, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v132, v124, v182 :: v_dual_mul_f32 v29, v131, v29
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v134, v[190:191]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v134, s55, v74
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v129, v141
	v_mul_f32_e32 v13, v124, v13
	v_mul_f32_e32 v27, v130, v27
	v_mul_f32_e32 v31, v129, v31
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v134, v80
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v134, s55, v73
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v131, v137
	v_mul_f32_e32 v139, v131, v139
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v21.h, v11.l
	v_mov_b16_e64 v11.l, v200.h
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s2, v134, v80
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v134, s55, v72
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s4, s73
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v14.h, v12.l
	v_mov_b16_e64 v12.l, v201.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s2, s2, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v71
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s5, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v70
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v69
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v68
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s9, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v67
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s10, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v66
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s11, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v65
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s12, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s13, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v63
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s15, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v62
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s16, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v61
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s34, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v60
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v59
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s18, s73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v58
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s31, s73
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s31, 0xff800000, v25
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s19, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v57
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s35, s73
	s_and_b32 s39, s20, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v56
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s21, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v55
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s14, s73
	s_and_b32 s14, s33, s73
	s_and_b32 s22, s22, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v54
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v53
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v52
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v51
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v50
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v49
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v134, v80
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v134, s55, v75
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s73
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s36, v134, v80
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e64 v134.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s36, s73
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s68
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v135, 16, v199
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v182, v132, v135 :: v_dual_mov_b32 v135, v133
	v_dual_mul_f32 v133, v129, v181 :: v_dual_add_nc_u32 v132, 0, v110
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v181, 16, v189
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v189, v133, v181
	v_mul_f32_e32 v133, v130, v180
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v170, v146, v170 :: v_dual_mul_f32 v167, v145, v167
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v188, v133, v180 :: v_dual_mul_f32 v133, v131, v179
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v179, 16, v187
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v165, v143, v165 :: v_dual_lshlrev_b32 v162, 16, v162
	v_dual_mul_f32 v187, v133, v179 :: v_dual_lshlrev_b32 v150, 16, v150
	v_mul_f32_e32 v133, v124, v178
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v178, 16, v186
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v144, v164
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v158, 16, v158
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v26, v26, v152 :: v_dual_lshlrev_b32 v151, 16, v151
	v_mul_f32_e32 v186, v133, v178
	v_mul_f32_e32 v133, v129, v177
	v_dual_mul_f32 v136, v136, v158 :: v_dual_lshlrev_b32 v177, 16, v185
	v_dual_mul_f32 v32, v32, v157 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v153, 16, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v185, v133, v177
	v_mul_f32_e32 v133, v130, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v176, 16, v184
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v140, v140, v155
	v_dual_mul_f32 v28, v28, v153 :: v_dual_lshlrev_b32 v147, 16, v147
	v_dual_mul_f32 v184, v133, v176 :: v_dual_lshlrev_b32 v149, 16, v149
	v_mul_f32_e32 v133, v131, v175
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v183
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v183, v133, v175
	v_mul_f32_e32 v133, v130, v169
	v_dual_mul_f32 v30, v30, v147 :: v_dual_lshlrev_b32 v169, 16, v174
	v_mul_f32_e32 v162, v142, v162
	v_dual_mul_f32 v31, v31, v148 :: v_dual_lshlrev_b32 v154, 16, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v174, v133, v169 :: v_dual_mul_f32 v133, v124, v168
	v_dual_mul_f32 v137, v137, v160 :: v_dual_lshlrev_b32 v168, 16, v173
	v_mul_f32_e32 v138, v138, v156
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v30, 0xff800000, v30, s26
	v_cndmask_b32_e64 v28, 0xff800000, v28, s24
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v173, v133, v168
	v_dual_mul_f32 v133, v129, v166 :: v_dual_lshlrev_b32 v166, 16, v172
	v_dual_mul_f32 v172, v129, v16 :: v_dual_mul_f32 v171, v163, v171
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v16, v9 :: v_dual_lshlrev_b32 v161, 16, v161
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v133, v166 :: v_dual_mul_f32 v139, v139, v159
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v112, v[16:17]
	ds_store_b64 v113, v[23:24]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v141, v161
	v_dual_mul_f32 v141, v13, v150 :: v_dual_mul_f32 v150, v172, v151
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v17, v10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v162, s21
	v_cndmask_b32_e64 v158, 0xff800000, v164, s17
	v_cndmask_b32_e64 v159, 0xff800000, v165, s13
	v_cndmask_b32_e64 v160, 0xff800000, v167, s15
	v_cndmask_b32_e64 v162, 0xff800000, v171, s38
	v_cndmask_b32_e64 v164, 0xff800000, v166, s39
	v_cndmask_b32_e64 v165, 0xff800000, v173, s40
	v_cndmask_b32_e64 v166, 0xff800000, v170, s37
	v_cndmask_b32_e64 v31, 0xff800000, v31, s25
	v_cndmask_b32_e64 v150, 0xff800000, v150, s29
	v_cndmask_b32_e64 v141, 0xff800000, v141, s30
	v_cndmask_b32_e64 v26, 0xff800000, v26, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v29, v29, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v137, s18
	v_cndmask_b32_e64 v139, 0xff800000, v139, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v27, v27, v149
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v114, v[17:18]
	v_mov_b32_e32 v18, v11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v9, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v13, v20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v183, s2
	v_cndmask_b32_e64 v148, 0xff800000, v184, s5
	v_cndmask_b32_e64 v149, 0xff800000, v185, s6
	v_cndmask_b32_e64 v151, 0xff800000, v186, s7
	v_cndmask_b32_e64 v152, 0xff800000, v188, s9
	v_cndmask_b32_e64 v153, 0xff800000, v189, s10
	v_cndmask_b32_e64 v154, 0xff800000, v182, s11
	v_cndmask_b32_e64 v155, 0xff800000, v187, s8
	v_cndmask_b32_e64 v156, 0xff800000, v174, s4
	v_cndmask_b32_e64 v140, 0xff800000, v140, s22
	v_cndmask_b32_e64 v29, 0xff800000, v29, s23
	v_cndmask_b32_e64 v136, 0xff800000, v136, s19
	v_cndmask_b32_e64 v32, 0xff800000, v32, s20
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v115, v[21:22]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v160, v159, v161
	v_max3_f32 v17, v165, v164, v162
	v_max3_f32 v20, v166, v158, v157
	v_max_f32_e32 v21, v141, v150
	v_max3_f32 v22, v26, v30, v31
	v_max_f32_e32 v24, v137, v139
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v27, 0xff800000, v27, s28
	v_cndmask_b32_e64 v138, 0xff800000, v138, s16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v154, v153, v152
	v_max3_f32 v10, v155, v151, v149
	v_max3_f32 v11, v148, v147, v156
	v_max_f32_e32 v23, v32, v136
	v_max3_f32 v167, v28, v29, v140
	v_max3_f32 v170, v17, v20, v16
	v_max3_f32 v171, v21, v27, v22
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v116, v[18:19]
	ds_store_b64 v117, v[14:15]
	ds_store_b64 v118, v[12:13]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v172, v9, v10, v11
	v_max3_f32 v173, v23, v138, v24
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v132
	ds_load_b128 v[13:16], v120
	ds_load_b128 v[17:20], v121
	ds_load_b128 v[21:24], v122
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v171, v167, v170
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.h, v134.h
	v_mov_b16_e64 v146.h, v134.h
	v_mov_b16_e64 v175.h, v134.h
	v_mov_b16_e64 v142.h, v134.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v132, v172, v173
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.h, v134.h
	v_mov_b16_e64 v179.h, v134.h
	v_mov_b16_e64 v177.h, v134.h
	v_mov_b16_e64 v180.h, v134.h
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v167, v132, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.h, v134.h
	v_mov_b16_e64 v176.h, v134.h
	v_mov_b16_e64 v169.h, v134.h
	v_mov_b16_e64 v163.h, v134.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v132, v25, v132, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v134.h
	v_mov_b16_e64 v144.h, v134.h
	v_mov_b16_e64 v168.h, v134.h
	v_mov_b16_e64 v143.h, v134.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v132
	v_sub_f32_e32 v150, v150, v132
	v_sub_f32_e32 v140, v140, v132
	v_sub_f32_e32 v165, v165, v132
	v_sub_f32_e32 v30, v30, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v167, v25, v132
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v132
	v_sub_f32_e32 v153, v153, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v25, v150
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v150, v165
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v152, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v162, v162
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v28, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v151, v132
	v_sub_f32_e32 v147, v147, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v178.l, v189.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v165, v166
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v190, 0, v140, s22
	v_cndmask_b32_e64 v152, 0, v150, s40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v172, v151
	v_exp_f32_e32 v182, v147
	v_exp_f32_e32 v183, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v30, s26
	v_cndmask_b32_e64 v151, 0, v162, s38
	v_cndmask_b32_e64 v162, 0, v165, s37
	v_cndmask_b32_e64 v147, 0, v170, s10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v154, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v32, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v134.l, v25.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v148, v132
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v190, v152
.Ltmp14:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v156, v132
	v_sub_f32_e32 v149, v149, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v166, v154
	v_exp_f32_e32 v174, v148
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v175.l, v162.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v132
	v_sub_f32_e32 v139, v139, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v149
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v175, 1, v175
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v184, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v166, s11
	v_cndmask_b32_e64 v166, 0, v171, s9
	v_cndmask_b32_e64 v170, 0, v172, s7
	v_cndmask_b32_e64 v171, 0, v174, s5
	v_cndmask_b32_e64 v139, 0, v182, s2
	v_cndmask_b32_e64 v172, 0, v156, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v173, s6
	v_cndmask_b32_e64 v173, 0, v136, s19
	v_cndmask_b32_e64 v136, 0, v183, s16
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v182, v171, v139 :: v_dual_add_f32 v183, v172, v138
.Ltmp16:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v157, v132
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v137, s18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v132
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v182, v183
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v174.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v184, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v31, v31, v132 :: v_dual_and_b32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v141, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v179.l, v188.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v160, v160, v132
	v_sub_f32_e32 v159, v159, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v26, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v181.l, v185.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v155, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v27, v27, v132 :: v_dual_add_f32 v26, v185, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v190.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v161, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v133.l, v165.h
	v_mov_b16_e64 v169.l, v157.h
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v160, s15
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v166, v141
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v161, v161
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v29, s23
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v157, v149
	v_dual_add_f32 v184, v173, v136 :: v_dual_and_b32 v169, 1, v169
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.l, v166.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v189, v153
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v170.h
	v_mov_b16_e64 v145.l, v171.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v27, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v164, v164, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v161, s12
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v161, v170, v140
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v173.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v27, v186, v187
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v186.h
	v_and_b32_e32 v133, 1, v133
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v195, v160, v161
	v_add_f32_e32 v191, v26, v27
	v_add_f32_e32 v26, v174, v137
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v27, 1, v134
	v_mov_b16_e64 v134.l, v187.h
	v_cmp_o_f32_e64 s16, v165, v165
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v158, v158, v132 :: v_dual_and_b32 v163, 1, v163
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v146, 1, v146
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e64 v176.l, v164.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v31, s25
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v31, v164, v151
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v165, v133, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v28, v188, v154 :: v_dual_and_b32 v161, 1, v176
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v164, v164
	v_cmp_o_f32_e64 s15, v187, v187
	v_cmp_o_f32_e64 s24, v166, v166
	v_add3_u32 v164, v164, v161, 0x7fff
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v192, v28, v29
.Ltmp36:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v167, v167
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v158, s17
	v_cndmask_b32_e64 v158, 0, v159, s13
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v159, v165, v147 :: v_dual_and_b32 v28, 1, v181
	v_add_f32_e32 v181, v30, v31
	v_add_f32_e32 v32, v162, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v156, v158, v148
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v158.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v183, v184, v26
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v165, 1, v134
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v193, v32, v155
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v180
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v180, 0, v167, s31
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v194, v156, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v167, v181, v193 :: v_dual_and_b32 v144, 1, v144
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v154.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v180
	v_mul_f32_e32 v4, v4, v180
	v_mul_f32_e32 v6, v6, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v156, 1, v179
	v_and_b32_e32 v168, 1, v168
	v_cmp_o_f32_e64 s26, v170, v170
	v_cmp_o_f32_e64 s28, v171, v171
	v_mov_b16_e64 v143.l, v172.h
	v_cmp_o_f32_e64 s33, v173, v173
	v_add3_u32 v163, v166, v163, 0x7fff
	v_add3_u32 v146, v170, v146, 0x7fff
	v_add3_u32 v145, v171, v145, 0x7fff
	v_add3_u32 v144, v173, v144, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v166, v191, v192
	v_add_f32_e32 v170, v194, v195
	v_add_f32_e32 v171, v182, v183
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v173, 1, v134
	v_add3_u32 v165, v187, v165, 0x7fff
	v_mov_b16_e64 v134.l, v153.h
	v_and_b32_e32 v160, 1, v177
	v_add3_u32 v176, v186, v155, 0x7fff
	v_add3_u32 v177, v188, v156, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_cmp_o_f32_e64 s2, v185, v185
	v_add3_u32 v184, v25, v27, 0x7fff
	v_add3_u32 v185, v185, v28, 0x7fff
	v_cmp_o_f32_e64 s10, v186, v186
	v_cmp_o_f32_e64 s11, v188, v188
	v_cmp_o_f32_e64 s9, v158, v158
	v_and_b32_e32 v159, 1, v178
	v_add3_u32 v168, v158, v168, 0x7fff
	v_cmp_o_f32_e64 s14, v154, v154
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v8, v8, v180 :: v_dual_and_b32 v143, 1, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v174, v174
	v_add3_u32 v142, v174, v142, 0x7fff
	v_cndmask_b16 v145.l, 0x7fff, v164.h, s6
	v_cndmask_b16 v176.l, 0x7fff, v133.h, s16
	v_cndmask_b16 v177.l, 0x7fff, v163.h, s24
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v166, v167
	v_add_f32_e32 v164, v170, v171
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v154, v154, v173, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v165.h, s15
	v_and_b32_e32 v165, 1, v134
	v_mov_b16_e64 v134.l, v152.h
	v_add3_u32 v175, v162, v175, 0x7fff
	v_cmp_o_f32_e64 s12, v189, v189
	v_cmp_o_f32_e64 s8, v157, v157
	v_add3_u32 v178, v189, v159, 0x7fff
	v_add3_u32 v169, v157, v169, 0x7fff
	v_cmp_o_f32_e64 s13, v153, v153
	v_cmp_o_f32_e64 s30, v172, v172
	v_add3_u32 v143, v172, v143, 0x7fff
	v_cndmask_b16 v172.h, 0x7fff, v184.h, s4
	v_cndmask_b16 v172.l, 0x7fff, v185.h, s2
	v_cndmask_b16 v133.l, 0x7fff, v176.h, s10
	v_cndmask_b16 v142.l, 0x7fff, v177.h, s11
	v_cndmask_b16 v175.l, 0x7fff, v168.h, s9
	v_cndmask_b16 v183.l, 0x7fff, v142.h, s35
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v167, v163, v164
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v142.h, 0x7fff, v154.h, s14
	v_add3_u32 v153, v153, v165, 0x7fff
	v_and_b32_e32 v168, 1, v134
	v_mov_b16_e64 v134.l, v151.h
	v_cmp_o_f32_e64 s17, v152, v152
	v_cndmask_b16 v143.l, 0x7fff, v178.h, s12
	v_cndmask_b16 v174.l, 0x7fff, v169.h, s8
	v_cndmask_b16 v181.l, 0x7fff, v143.h, s30
	v_permlanex16_b32 v166, v172, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v133, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v169, v167, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v170, v142, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v143.h, 0x7fff, v153.h, s13
	v_add3_u32 v152, v152, v168, 0x7fff
	v_and_b32_e32 v153, 1, v134
	v_mov_b16_e64 v134.l, v150.h
	v_cmp_o_f32_e64 s5, v190, v190
	v_add3_u32 v179, v190, v160, 0x7fff
	v_cndmask_b16 v182.l, 0x7fff, v144.h, s33
	v_perm_b32 v163, v166, v172, v119
	v_perm_b32 v164, v166, v172, v128
	v_perm_b32 v165, v154, v133, v119
	v_perm_b32 v166, v154, v133, v128
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v167, v169
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v167, v170, v142, v119
	v_perm_b32 v168, v170, v142, v128
	v_permlanex16_b32 v142, v143, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v144.h, 0x7fff, v152.h, s17
	v_and_b32_e32 v152, 1, v134
	v_mov_b16_e64 v134.l, v149.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v180
	v_mul_f32_e32 v3, v3, v180
	v_mul_f32_e32 v5, v5, v180
	v_mul_f32_e32 v7, v7, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v150, v150
	v_cndmask_b16 v144.l, 0x7fff, v179.h, s5
	v_perm_b32 v169, v142, v143, v119
	v_perm_b32 v170, v142, v143, v128
	v_add3_u32 v143, v150, v152, 0x7fff
	v_and_b32_e32 v150, 1, v134
	v_mov_b16_e64 v134.l, v148.h
	v_cmp_o_f32_e64 s7, v162, v162
	v_cmp_o_f32_e64 s18, v151, v151
	v_cmp_o_f32_e64 s20, v149, v149
	v_add3_u32 v151, v151, v153, 0x7fff
	v_permlanex16_b32 v142, v144, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[163:170], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v149, v150, 0x7fff
	v_and_b32_e32 v14, 1, v134
	v_mov_b16_e64 v134.l, v147.h
	v_cndmask_b16 v146.l, 0x7fff, v175.h, s7
	v_cndmask_b16 v178.l, 0x7fff, v146.h, s26
	v_cndmask_b16 v179.l, 0x7fff, v145.h, s28
	v_cndmask_b16 v145.h, 0x7fff, v151.h, s18
	v_perm_b32 v9, v142, v144, v119
	v_perm_b32 v10, v142, v144, v128
	v_cndmask_b16 v146.h, 0x7fff, v143.h, s19
	v_cndmask_b16 v174.h, 0x7fff, v13.h, s20
	v_and_b32_e32 v142, 1, v134
	v_mov_b16_e64 v134.l, v141.h
	v_cmp_o_f32_e64 s21, v148, v148
	v_cmp_o_f32_e64 s22, v147, v147
	v_permlanex16_b32 v12, v145, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v146, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v148, v14, 0x7fff
	v_permlanex16_b32 v143, v174, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v142, v147, v142, 0x7fff
	v_and_b32_e32 v144, 1, v134
	v_mov_b16_e64 v134.l, v140.h
	v_perm_b32 v11, v12, v145, v119
	v_perm_b32 v12, v12, v145, v128
	v_perm_b32 v13, v15, v146, v119
	v_perm_b32 v14, v15, v146, v128
	v_cndmask_b16 v175.h, 0x7fff, v16.h, s21
	v_perm_b32 v15, v143, v174, v119
	v_perm_b32 v16, v143, v174, v128
	v_cndmask_b16 v176.h, 0x7fff, v142.h, s22
	v_and_b32_e32 v142, 1, v134
	v_mov_b16_e64 v134.l, v139.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[25:28], v123
	ds_load_b128 v[29:32], v125
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v141, v141
	v_cmp_o_f32_e64 s25, v140, v140
	v_and_b32_e32 v14, 1, v134
	v_mov_b16_e64 v134.l, v138.h
	v_cmp_o_f32_e64 s27, v139, v139
	v_add3_u32 v141, v141, v144, 0x7fff
	v_add3_u32 v13, v140, v142, 0x7fff
	v_add3_u32 v17, v139, v14, 0x7fff
	v_and_b32_e32 v16, 1, v134
	v_mov_b16_e64 v134.l, v136.h
	v_cmp_o_f32_e64 s29, v138, v138
	v_cndmask_b16 v177.h, 0x7fff, v141.h, s23
	v_cndmask_b16 v178.h, 0x7fff, v13.h, s25
	v_cndmask_b16 v179.h, 0x7fff, v17.h, s27
	v_and_b32_e32 v19, 1, v134
	v_mov_b16_e64 v134.l, v137.h
	v_add3_u32 v17, v138, v16, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[155:158], v126
	ds_load_b128 v[159:162], v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v136, v136
	v_cmp_o_f32_e64 s34, v137, v137
	v_and_b32_e32 v20, 1, v134
	v_permlanex16_b32 v143, v175, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v176, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v177, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v178, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v136, v19, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v17.h, s29
	v_add3_u32 v17, v137, v20, 0x7fff
	v_perm_b32 v9, v143, v175, v119
	v_perm_b32 v10, v143, v175, v128
	v_perm_b32 v11, v12, v176, v119
	v_perm_b32 v12, v12, v176, v128
	v_perm_b32 v13, v15, v177, v119
	v_perm_b32 v14, v15, v177, v128
	v_perm_b32 v15, v18, v178, v119
	v_perm_b32 v16, v18, v178, v128
	v_cndmask_b16 v182.h, 0x7fff, v19.h, s31
	v_cndmask_b16 v183.h, 0x7fff, v17.h, s34
	v_permlanex16_b32 v18, v179, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v133, v135, v180
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v12, v181, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v182, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v183, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v179, v119
	v_perm_b32 v10, v18, v179, v128
	v_perm_b32 v11, v12, v181, v119
	v_perm_b32 v12, v12, v181, v128
	v_perm_b32 v13, v14, v182, v119
	v_perm_b32 v14, v14, v182, v128
	v_perm_b32 v15, v16, v183, v119
	v_perm_b32 v16, v16, v183, v128
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[155:162], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v133, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v132 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v133, vcc_lo
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp56:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp62:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp71:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp72:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp74:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp75:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp80:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp90:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp104:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp122:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp124:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp126:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp127:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp128:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp130:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp132:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp133:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 74
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8892
; TotalNumSgprs: 76
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
