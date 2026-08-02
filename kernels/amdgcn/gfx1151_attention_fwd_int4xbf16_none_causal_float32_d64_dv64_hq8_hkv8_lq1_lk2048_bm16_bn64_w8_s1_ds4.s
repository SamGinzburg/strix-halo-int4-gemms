	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s55, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v28, 15, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_load_b32 s12, s[0:1], 0x88
	s_mov_b32 s44, 0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v28
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v27, 1, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s55
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s55
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v2
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
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
	s_mul_i32 s7, s7, s55
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s13, s14, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s14, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s13, v1
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s55
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v0
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 24, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v27, v3, 0
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
	s_mul_i32 s5, s54, s2
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 63
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s6, s4, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s68, s5, 6
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s6, s6, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s68, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s69, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s68, s69
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v2, s14, v28
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s13, v28, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v31, 62, v1
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v12, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v2
	v_lshrrev_b32_e32 v5, 1, v0
	v_and_b32_e32 v14, 0x60, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v4, 24, v27
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_and_b32 v30, 1, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 16, v0
	v_mov_b32_e32 v101, 0xff800000
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v11, 3, v0
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v62, s12, v2
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v9, 3, v12
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v3, 0xf8, v0
	v_and_b32_e32 v18, 24, v5
	v_mov_b32_e32 v5, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v16, v28, 5, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v15, 2, v3
	v_cmp_eq_u32_e64 s2, 0, v6
	v_dual_mov_b32 v100, v1 :: v_dual_lshlrev_b32 v21, 4, v12
	v_and_or_b32 v23, 0x410, v8, v14
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v17, 24, v11
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_xor_b32_e32 v11, v11, v18
	v_cndmask_b32_e64 v20, 0x1054, v7, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 8, v16
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s43, v9
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v25, 16, v16
	v_lshrrev_b32_e32 v22, 1, v3
	v_lshl_or_b32 v14, v14, 6, v21
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v74, 0, v24
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v64, 0x800, v15
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v53, 44, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v14, v23, v14
	v_or_b32_e32 v54, 46, v30
	v_or_b32_e32 v55, 48, v30
	v_or_b32_e32 v56, 50, v30
	v_or_b32_e32 v57, 52, v30
	v_lshl_or_b32 v79, v12, 7, v14
	v_or_b32_e32 v58, 54, v30
	v_or_b32_e32 v59, 56, v30
	v_or_b32_e32 v60, 58, v30
	v_or_b32_e32 v61, 60, v30
	v_xor_b32_e32 v14, 48, v79
	v_xor_b32_e32 v93, 64, v79
	v_xor_b32_e32 v94, 0x50, v79
	v_xor_b32_e32 v95, 0x60, v79
	v_xor_b32_e32 v96, 0x70, v79
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s70, s3, 11
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v29, 2, v0
	v_or_b32_e32 v32, 2, v30
	v_or_b32_e32 v33, 4, v30
	v_or_b32_e32 v34, 6, v30
	v_or_b32_e32 v35, 8, v30
	v_or_b32_e32 v36, 10, v30
	v_or_b32_e32 v37, 12, v30
	v_or_b32_e32 v38, 14, v30
	v_or_b32_e32 v39, 16, v30
	v_or_b32_e32 v40, 18, v30
	v_or_b32_e32 v41, 20, v30
	v_or_b32_e32 v42, 22, v30
	v_or_b32_e32 v43, 24, v30
	v_or_b32_e32 v44, 26, v30
	v_or_b32_e32 v45, 28, v30
	v_or_b32_e32 v46, 30, v30
	v_or_b32_e32 v47, 32, v30
	v_or_b32_e32 v48, 34, v30
	v_or_b32_e32 v49, 36, v30
	v_or_b32_e32 v50, 38, v30
	v_or_b32_e32 v51, 40, v30
	v_or_b32_e32 v52, 42, v30
	v_mov_b32_e32 v3, v1
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s42, v17
	v_or_b32_e32 v65, s70, v53
	v_or_b32_e32 v66, s70, v54
	v_or_b32_e32 v67, s70, v55
	v_or_b32_e32 v68, s70, v56
	v_or_b32_e32 v69, s70, v57
	v_or_b32_e32 v70, s70, v58
	v_or_b32_e32 v71, s70, v59
	v_or_b32_e32 v72, s70, v60
	v_or_b32_e32 v73, s70, v61
	v_add_nc_u32_e32 v91, 0, v14
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s71, 0x76543210
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
	v_mad_u64_u32 v[18:19], null, s43, v15, v[9:10]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v10
	v_cndmask_b32_e64 v9, 0x3276, v13, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v63, 0, v16
	v_xor_b32_e32 v16, 24, v16
	v_lshl_or_b32 v13, v20, 8, v20
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v92, s2, v10 :: v_dual_add_nc_u32 v75, 0, v25
	v_xor_b32_e32 v15, v21, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v76, 0, v16
	v_and_b32_e32 v13, 0x540054, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v97, v92
	v_mov_b32_e32 v98, v92
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[19:20], v63
	ds_load_b64 v[21:22], v74
	ds_load_b64 v[23:24], v75
	ds_load_b64 v[25:26], v76
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v77, v12, 10, v15
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v99, v92 :: v_dual_add_nc_u32 v78, 0, v11
	v_lshl_or_b32 v11, v13, 4, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x760076, v9
	v_xor_b32_e32 v13, 0x90, v77
	v_xor_b32_e32 v15, 0x120, v77
	v_xor_b32_e32 v16, 0x1b0, v77
	v_xor_b32_e32 v84, 0x240, v77
	v_xor_b32_e32 v85, 0x2d0, v77
	v_xor_b32_e32 v86, 0x360, v77
	v_xor_b32_e32 v87, 0x3f0, v77
	v_and_b32_e32 v80, 0x5040504, v11
	v_lshl_or_b32 v9, v9, 4, v9
	v_xor_b32_e32 v11, 16, v79
	v_xor_b32_e32 v12, 32, v79
	v_add_nc_u32_e32 v81, 0, v13
	v_add_nc_u32_e32 v82, 0, v15
	v_add_nc_u32_e32 v83, 0, v16
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_and_b32_e32 v88, 0x7060706, v9
	v_add_nc_u32_e32 v89, 0, v11
	v_add_nc_u32_e32 v90, 0, v12
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s5, s68, s70
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v102, 0x800, v29
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v105, s5, v29
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[103:104], null, s5, s43, v[18:19]
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s68, v64
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s4, s68, v102
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[104:105], null, v105, s42, v[17:18]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s4, s0, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v102, 1, v103
	v_add_lshl_u32 v103, v103, s43, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s1, s2
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v104, 0x80000000, v104, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v128, 0x80000000, v102, s2
	v_cndmask_b32_e64 v165, 0x80000000, v103, s2
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[102:103], v104, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s68, v30
	v_or_b32_e32 v153, s70, v34
	v_or_b32_e32 v154, s70, v35
	v_or_b32_e32 v155, s70, v36
	v_or_b32_e32 v157, s70, v38
	v_or_b32_e32 v158, s70, v39
	v_or_b32_e32 v163, s70, v43
	v_or_b32_e32 v164, s70, v44
	v_or_b32_e32 v169, s70, v48
	v_or_b32_e32 v170, s70, v49
	v_or_b32_e32 v171, s70, v50
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s2, 0x800, v162
	v_or_b32_e32 v150, s70, v30
	v_or_b32_e32 v159, s70, v40
	v_or_b32_e32 v166, s70, v45
	v_or_b32_e32 v151, s70, v32
	v_or_b32_e32 v156, s70, v37
	v_or_b32_e32 v160, s70, v41
	v_or_b32_e32 v167, s70, v46
	v_or_b32_e32 v172, s70, v51
	v_or_b32_e32 v152, s70, v33
	v_or_b32_e32 v161, s70, v42
	v_or_b32_e32 v168, s70, v47
	v_or_b32_e32 v173, s70, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v174, v65, s68, 1
	v_add_lshl_u32 v175, v66, s68, 1
	v_add_lshl_u32 v176, v67, s68, 1
	v_add_lshl_u32 v177, v68, s68, 1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v162, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s68, v31
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s72, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v162, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v162, s68, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v162, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s68, v60
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v162, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s68, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v162, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s68, v58
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s36, v162, v62
	v_mov_b32_e32 v162, v101
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v78, v[102:103]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[116:119], v63 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[124:127], v74 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[146:149], v128, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[116:117], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[122:123], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[120:121], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[118:119], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v74 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v75 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[126:127], v[21:22], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[124:125], v[21:22], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[9:10], v[21:22], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[21:22], v[138:145] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v75 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[110:117], v[15:16], v[23:24], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[13:14], v[23:24], v[130:137] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[9:10], v[23:24], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[23:24], v[138:145] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v76 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[130:137], v[13:14], v[25:26], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[15:16], v[25:26], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v129, v133
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, v70, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v124, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v122, v111
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v111, v117
	v_cvt_f32_i32_e32 v126, v136
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v136, v150, s68, 1
	v_add_lshl_u32 v150, v166, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v125, v137
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v137, v151, s68, 1
	v_add_lshl_u32 v151, v167, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v121, v112
	v_cvt_f32_i32_e32 v112, v130
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[9:10], v[25:26], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[11:12], v[25:26], v[138:145] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v165, s[64:67], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v130, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v132, v69, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v14, v103
	v_cvt_f32_i32_e32 v16, v104
	v_cvt_f32_i32_e32 v103, v108
	v_cvt_f32_i32_e32 v104, v109
	v_cvt_f32_i32_e32 v108, v114
	v_cvt_f32_i32_e32 v109, v116
	v_cvt_f32_i32_e32 v114, v131
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v120, v140
	v_cvt_f32_i32_e32 v117, v141
	v_cvt_f32_i32_e32 v115, v143
	v_cvt_f32_i32_e32 v116, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v139, v153, s68, 1
	v_add_lshl_u32 v140, v154, s68, 1
	v_add_lshl_u32 v141, v155, s68, 1
	v_add_lshl_u32 v143, v157, s68, 1
	v_add_lshl_u32 v144, v158, s68, 1
	v_add_lshl_u32 v153, v169, s68, 1
	v_add_lshl_u32 v154, v170, s68, 1
	v_add_lshl_u32 v155, v171, s68, 1
	v_cndmask_b32_e64 v171, 0x80000000, v133, s2
	v_add_lshl_u32 v133, v73, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v119, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v145, v159, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v118, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v142, v156, s68, 1
	v_add_lshl_u32 v156, v172, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v13, v102
	v_cvt_f32_i32_e32 v15, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v113
	v_cvt_f32_i32_e32 v113, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v138, v152, s68, 1
	v_add_lshl_u32 v152, v168, s68, 1
	v_add_lshl_u32 v157, v173, s68, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v128, v134
	v_cvt_f32_i32_e32 v127, v135
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v134, v71, s68, 1
	v_add_lshl_u32 v135, v72, s68, 1
	v_cndmask_b32_e64 v169, 0x80000000, v139, s2
	v_cndmask_b32_e64 v170, 0x80000000, v143, s2
	v_cndmask_b32_e64 v143, 0x80000000, v144, s2
	v_cndmask_b32_e64 v166, 0x80000000, v136, s2
	v_cndmask_b32_e64 v136, 0x80000000, v145, s2
	v_cndmask_b32_e64 v145, 0x80000000, v150, s2
	v_cndmask_b32_e64 v150, 0x80000000, v155, s2
	v_cndmask_b32_e64 v167, 0x80000000, v137, s2
	v_cndmask_b32_e64 v168, 0x80000000, v138, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v155, 0x80000000, v176, s2
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	v_cndmask_b32_e64 v172, 0x80000000, v134, s2
	v_cndmask_b32_e64 v173, 0x80000000, v135, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v116, v97, v116 :: v_dual_mul_f32 v15, v99, v15
	v_dual_mul_f32 v114, v97, v114 :: v_dual_mul_f32 v103, v98, v103
	v_dual_mul_f32 v14, v97, v14 :: v_dual_mul_f32 v105, v92, v105
	v_dual_mul_f32 v104, v99, v104 :: v_dual_mul_f32 v107, v92, v107
	v_dual_mul_f32 v16, v98, v16 :: v_dual_mul_f32 v113, v92, v113
	v_dual_mul_f32 v106, v97, v106 :: v_dual_mul_f32 v109, v99, v109
	v_dual_mul_f32 v108, v97, v108 :: v_dual_mul_f32 v111, v99, v111
	v_mul_f32_e32 v13, v92, v13
	v_dual_mul_f32 v115, v92, v115 :: v_dual_mul_f32 v112, v99, v112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v165.l, v148.l
	v_mov_b16_e64 v131.l, v149.l
	v_mov_b16_e64 v178.l, v146.l
	v_mov_b16_e64 v102.l, v147.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v165.h, v11.l
	v_mov_b16_e64 v11.l, v148.h
	v_mov_b16_e64 v131.h, v12.l
	v_mov_b16_e64 v12.l, v149.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v148, v163, s68, 1
	v_add_lshl_u32 v149, v164, s68, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v178.h, v9.l
	v_mov_b16_e64 v9.l, v146.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v146, v160, s68, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v102.h, v10.l
	v_mov_b16_e64 v10.l, v147.h
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v147, v161, s68, 1
	v_cndmask_b32_e64 v139, 0x80000000, v148, s2
	v_cndmask_b32_e64 v144, 0x80000000, v149, s2
	v_cndmask_b32_e64 v148, 0x80000000, v153, s2
	v_cndmask_b32_e64 v149, 0x80000000, v154, s2
	v_cndmask_b32_e64 v153, 0x80000000, v174, s2
	v_cndmask_b32_e64 v174, 0x80000000, v133, s2
	v_add_lshl_u32 v133, s5, v31, 1
	v_cndmask_b32_e64 v137, 0x80000000, v146, s2
	v_cndmask_b32_e64 v146, 0x80000000, v151, s2
	v_cndmask_b32_e64 v151, 0x80000000, v156, s2
	v_cndmask_b32_e64 v138, 0x80000000, v147, s2
	v_cndmask_b32_e64 v147, 0x80000000, v152, s2
	v_cndmask_b32_e64 v152, 0x80000000, v157, s2
	v_cndmask_b32_e64 v154, 0x80000000, v175, s2
	v_cndmask_b32_e64 v156, 0x80000000, v177, s2
	v_cndmask_b32_e64 v175, 0x80000000, v133, s2
	s_clause 0x1f
	buffer_load_u16 v164, v149, s[60:63], 0 offen
	buffer_load_u16 v163, v150, s[60:63], 0 offen
	buffer_load_u16 v161, v151, s[60:63], 0 offen
	buffer_load_u16 v160, v152, s[60:63], 0 offen
	buffer_load_u16 v159, v153, s[60:63], 0 offen
	buffer_load_u16 v158, v154, s[60:63], 0 offen
	buffer_load_u16 v157, v155, s[60:63], 0 offen
	buffer_load_u16 v156, v156, s[60:63], 0 offen
	buffer_load_u16 v155, v132, s[60:63], 0 offen
	buffer_load_u16 v154, v136, s[60:63], 0 offen
	buffer_load_u16 v153, v137, s[60:63], 0 offen
	buffer_load_u16 v132, v147, s[60:63], 0 offen
	buffer_load_u16 v133, v148, s[60:63], 0 offen
	buffer_load_u16 v137, v138, s[60:63], 0 offen
	buffer_load_u16 v138, v139, s[60:63], 0 offen
	buffer_load_u16 v139, v146, s[60:63], 0 offen
	buffer_load_u16 v135, v144, s[60:63], 0 offen
	buffer_load_u16 v136, v145, s[60:63], 0 offen
	buffer_load_u16 v134, v143, s[60:63], 0 offen
	buffer_load_u16 v147, v166, s[60:63], 0 offen
	buffer_load_u16 v148, v167, s[60:63], 0 offen
	buffer_load_u16 v143, v168, s[60:63], 0 offen
	buffer_load_u16 v150, v169, s[60:63], 0 offen
	buffer_load_u16 v140, v140, s[60:63], 0 offen
	buffer_load_u16 v141, v141, s[60:63], 0 offen
	buffer_load_u16 v151, v142, s[60:63], 0 offen
	buffer_load_u16 v152, v170, s[60:63], 0 offen
	buffer_load_u16 v144, v171, s[60:63], 0 offen
	buffer_load_u16 v145, v172, s[60:63], 0 offen
	buffer_load_u16 v142, v173, s[60:63], 0 offen
	buffer_load_u16 v149, v174, s[60:63], 0 offen
	buffer_load_u16 v146, v175, s[60:63], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v166, 0, v77
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v110, v98, v110
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b32 v166, v178
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v166, s68, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b32 v81, v9
	ds_store_b32 v82, v102
	ds_store_b32 v83, v10
	ds_store_b32 v84, v165
	ds_store_b32 v85, v11
	ds_store_b32 v86, v131
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v92, v130
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v166, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v166, s68, v56
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b32 v87, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v98, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v102.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s2, s5, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v55
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v9, 0, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v102.h
	v_mov_b16_e64 v131.h, v102.h
	v_mov_b16_e64 v167.h, v102.h
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v166, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v166, s68, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v102.h
	v_mov_b32_e32 v165, v100
	v_mov_b16_e32 v100.h, v102.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s6, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.h, v102.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s7, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v52
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s8, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v51
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s9, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v50
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s10, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v49
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s11, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v48
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s12, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v47
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s14, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v46
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s15, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v45
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s34, s72
	s_and_b32 s37, s16, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v44
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s35, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v43
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s17, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v42
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s31, s72
	s_and_b32 s39, s18, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v41
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s36, s72
	s_and_b32 s40, s19, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v40
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s4, s72
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v162
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s20, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v39
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s13, s72
	s_and_b32 s13, s33, s72
	s_and_b32 s21, s21, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v38
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v37
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v36
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v35
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v34
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v33
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v166, v62
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v166, s68, v32
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s72
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v166, v62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v166.h, v102.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s72
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s68, s69
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v11, 16, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v101, v10, v11 :: v_dual_mul_f32 v10, v97, v129
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v11, 16, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v129.h, v102.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v10, v11
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v10, v98, v128 :: v_dual_lshlrev_b32 v11, 16, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.h, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v161, v10, v11
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v10, v99, v127 :: v_dual_lshlrev_b32 v11, 16, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.h, v102.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v160, v10, v11
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v10, v92, v126 :: v_dual_lshlrev_b32 v11, 16, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v159, v10, v11 :: v_dual_mul_f32 v10, v97, v125
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v11, 16, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.h, v102.h
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v158, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v157
	v_mul_f32_e32 v10, v98, v124
	s_waitcnt vmcnt(24)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v124, v10, v11 :: v_dual_lshlrev_b32 v11, 16, v156
	v_mul_f32_e32 v10, v99, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.h, v102.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v124, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, v10, v11
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v10, v98, v121 :: v_dual_lshlrev_b32 v11, 16, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v121.h, v102.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v155, v10, v11
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v10, v92, v123 :: v_dual_lshlrev_b32 v11, 16, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v123.h, v102.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v154, v10, v11
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v10, v97, v120 :: v_dual_lshlrev_b32 v11, 16, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v120.h, v102.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v10, v11
	v_mul_f32_e32 v10, v98, v117
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v117, 16, v137
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, v99, v118
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v117, v10, v117 :: v_dual_lshlrev_b32 v118, 16, v138
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v118, v11, v118 :: v_dual_lshlrev_b32 v119, 16, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v132, 16, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v117, s40
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v119, v12, v119
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v112, v112, v132 :: v_dual_lshlrev_b32 v135, 16, v135
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v118, s39
	v_cndmask_b32_e64 v119, 0xff800000, v119, s37
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v115, v115, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v116, v116, v136 :: v_dual_lshlrev_b32 v133, 16, v133
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v137, 16, v147
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v112, s14
	v_cndmask_b32_e64 v115, 0xff800000, v115, s38
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v114, v114, v133 :: v_dual_lshlrev_b32 v139, 16, v150
	v_mul_f32_e32 v132, v13, v137
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v148
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v116, s20
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v114, 0xff800000, v114, s12
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v135, v15, v139 :: v_dual_lshlrev_b32 v148, 16, v152
	v_mul_f32_e32 v133, v14, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v132, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v135, 0xff800000, v135, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v104, v104, v148 :: v_dual_lshlrev_b32 v141, 16, v141
	v_mul_f32_e32 v136, v16, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v147, 16, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v133, s29
	v_cndmask_b32_e64 v137, 0xff800000, v158, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v106, v106, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v103, v103, v147 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v159, s7
	v_cndmask_b32_e64 v106, 0xff800000, v106, s25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v105, v140
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v113, v113, v134 :: v_dual_lshlrev_b32 v144, 16, v144
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v156, s19
	v_cndmask_b32_e64 v105, 0xff800000, v105, s26
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v107, v107, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v110, v110, v142 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v153, s41
	v_cndmask_b32_e64 v139, 0xff800000, v161, s9
	v_cndmask_b32_e64 v107, 0xff800000, v107, s18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v108, v108, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v154, s21
	v_cndmask_b32_e64 v140, 0xff800000, v163, s10
	v_cndmask_b32_e64 v141, 0xff800000, v101, s11
	v_cndmask_b32_e64 v142, 0xff800000, v160, s8
	v_cndmask_b32_e64 v108, 0xff800000, v108, s16
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v155, s2
	v_cndmask_b32_e64 v136, 0xff800000, v136, s28
	v_cndmask_b32_e64 v113, 0xff800000, v113, s22
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v154, v107, v108
.Ltmp2:
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v109, v109, v149 :: v_dual_lshlrev_b32 v146, 16, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v104, s23
	v_cndmask_b32_e64 v103, 0xff800000, v103, s24
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v119, v112, v114
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v111, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v109, s17
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v149, v145, v144, v117
	v_max3_f32 v150, v118, v115, v116
	v_max_f32_e32 v151, v132, v133
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v111, s13
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v152, v135, v105, v106
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s15
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v141, v140, v139
	v_max3_f32 v146, v142, v138, v137
	v_max3_f32 v147, v124, v134, v143
	v_max3_f32 v153, v103, v104, v113
	v_max_f32_e32 v155, v109, v111
	v_max3_f32 v148, v149, v150, v148
	v_max3_f32 v149, v151, v136, v152
	v_max3_f32 v101, v101, v146, v147
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[9:12], v9
	ds_load_b128 v[13:16], v89
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v146, v154, v110, v155
	v_max3_f32 v147, v149, v153, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v101, v147, v101, v146
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v146, v101, s71, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v101, v162, v101, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v101
	v_sub_f32_e32 v119, v119, v101
	v_sub_f32_e32 v137, v137, v101
	v_sub_f32_e32 v124, v124, v101
	v_sub_f32_e32 v134, v134, v101
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v132, v132
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v101
	v_sub_f32_e32 v116, v116, v101
	v_sub_f32_e32 v110, v110, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v142, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v119, s37
	v_cndmask_b32_e64 v137, 0, v137, s6
	v_cndmask_b32_e64 v124, 0, v124, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v127.l, v112.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v132, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.l, v124.h
	v_and_b32_e32 v127, 1, v127
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v101
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v167.l, v132.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v117, v117, v101 :: v_dual_and_b32 v122, 1, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v109, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v110, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v138, s7
	v_cndmask_b32_e64 v138, 0, v134, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v132, v132
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v119, v137
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v114, v114, v101 :: v_dual_add_f32 v159, v124, v138
	v_sub_f32_e32 v141, v141, v101
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v117, s40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v109, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v100.l, v119.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v107, v107, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v119, v119
	v_mov_b16_e64 v120.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v118, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v100, 1, v100
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v114, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v141, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v105, v105, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v112, v153
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v156, v114, v140 :: v_dual_sub_f32 v115, v115, v101
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v114.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v143, v101
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v156, v118, v156
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v126, 1, v126
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v111, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v145, v145, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v107, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v129.l, v117.h
	v_add3_u32 v100, v119, v100, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v114, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v115, s38
	v_cndmask_b32_e64 v115, 0, v116, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v101
	v_sub_f32_e32 v135, v135, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v143, s2
	v_cndmask_b32_e64 v143, 0, v110, s15
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v110, v117, v151 :: v_dual_add_f32 v111, v115, v152
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v101
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v135, v135
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v128.l, v115.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v110, v111
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v108, v108, v101
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v121.l, v134.h
	v_mov_b16_e64 v169.l, v105.h
	v_and_b32_e32 v128, 1, v128
	v_cmp_o_f32_e64 s20, v124, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s28
	v_cndmask_b32_e64 v135, 0, v135, s27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v133, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v101
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v136.h
	v_add3_u32 v124, v124, v122, 0x7fff
	v_cmp_o_f32_e64 s15, v136, v136
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v144, v150
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v144.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v105, v105
	v_cmp_o_f32_e64 s7, v144, v144
	v_add3_u32 v126, v114, v126, 0x7fff
	v_and_b32_e32 v130, 1, v130
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v112, v112
	v_cmp_o_f32_e64 s26, v137, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v106, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v144, v144, v130, 0x7fff
	v_cmp_o_f32_e64 s27, v138, v138
	v_cmp_o_f32_e64 s28, v141, v141
	v_cmp_o_f32_e64 s30, v155, v155
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v105, v147
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v101
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v139, s9
	v_cndmask_b32_e64 v139, 0, v142, s8
	v_cndmask_b32_e64 v142, 0, v108, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_dual_sub_f32 v146, v162, v101 :: v_dual_add_f32 v157, v116, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v123.l, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.l, v116.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v146, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v135, v135
	v_and_b32_e32 v123, 1, v123
	v_cmp_o_f32_e64 s17, v147, v147
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v104, s23
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v136, v135
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v123, v142, v123, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v103, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v116, v116
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v146, 0, v146, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v129, 1, v129
	v_and_b32_e32 v121, 1, v121
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v148, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp33:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v146 :: v_dual_and_b32 v110, 1, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v133, s29
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v146
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v161, v106, v107
	v_add_f32_e32 v106, v154, v155
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v132, v133
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v102.l, v133.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v157, v157, v158
.Ltmp39:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v146
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v103, v104
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v134, v141
	v_add_f32_e32 v104, v142, v143
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v107, 1, v102
	v_mov_b16_e64 v102.l, v135.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v158, v159, v103 :: v_dual_add_f32 v159, v104, v106
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v169, v112, v127, 0x7fff
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v122, v160, v161 :: v_dual_mul_f32 v7, v7, v146
.Ltmp47:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v119, 1, v102
	v_mov_b16_e64 v102.l, v147.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v146
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v146 :: v_dual_add_f32 v108, v113, v145
	v_mul_f32_e32 v8, v8, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v148.h
	v_add3_u32 v119, v135, v119, 0x7fff
	v_add3_u32 v164, v105, v110, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v162, v108, v109
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v108, 1, v167
	v_and_b32_e32 v109, 1, v168
	v_add3_u32 v167, v117, v129, 0x7fff
	v_add3_u32 v168, v115, v128, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v127, v162, v163 :: v_dual_add_f32 v128, v156, v157
	v_add_f32_e32 v129, v158, v159
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v156, v134, v121, 0x7fff
	v_and_b32_e32 v121, 1, v102
	v_mov_b16_e64 v102.l, v149.h
	v_add3_u32 v136, v136, v109, 0x7fff
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v122, v122, v127
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v131
	v_add3_u32 v135, v147, v121, 0x7fff
	v_and_b32_e32 v121, 1, v102
	v_mov_b16_e64 v102.l, v145.h
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v128, v129
.Ltmp55:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v146 :: v_dual_and_b32 v125, 1, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v142, v142
	v_cndmask_b16 v130.l, 0x7fff, v136.h, s15
	v_cndmask_b16 v156.l, 0x7fff, v100.h, s19
	v_and_b32_e32 v100, 1, v102
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v122, v127
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v133, v133
	v_add3_u32 v133, v133, v107, 0x7fff
	v_add3_u32 v132, v132, v108, 0x7fff
	v_cmp_o_f32_e64 s5, v148, v148
	v_add3_u32 v148, v148, v111, 0x7fff
	v_add3_u32 v125, v116, v125, 0x7fff
	v_cmp_o_f32_e64 s18, v149, v149
	v_add3_u32 v147, v149, v121, 0x7fff
	v_cndmask_b16 v124.l, 0x7fff, v164.h, s2
	v_cndmask_b16 v157.l, 0x7fff, v124.h, s20
	v_cndmask_b16 v159.l, 0x7fff, v123.h, s22
	v_cndmask_b16 v124.h, 0x7fff, v135.h, s17
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v123, v136, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v102.l, v150.h
	v_cmp_o_f32_e64 s23, v154, v154
	v_add3_u32 v142, v154, v120, 0x7fff
	v_cndmask_b16 v120.h, 0x7fff, v133.h, s13
	v_cndmask_b16 v120.l, 0x7fff, v132.h, s14
	v_cndmask_b16 v130.h, 0x7fff, v119.h, s16
	v_cmp_o_f32_e64 s4, v145, v145
	v_cndmask_b16 v126.l, 0x7fff, v148.h, s5
	v_cndmask_b16 v149.l, 0x7fff, v126.h, s11
	v_cndmask_b16 v154.l, 0x7fff, v125.h, s12
	v_cndmask_b16 v126.h, 0x7fff, v147.h, s18
	v_add3_u32 v125, v145, v100, 0x7fff
	v_permlanex16_b32 v145, v124, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v136, v123
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v102
	v_mov_b16_e64 v102.l, v151.h
	v_mov_b16_e64 v166.l, v113.h
	v_permlanex16_b32 v128, v120, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v122, v130, s71, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v150, v150
	v_perm_b32 v123, v145, v124, v80
	v_perm_b32 v124, v145, v124, v88
	v_permlanex16_b32 v145, v126, s71, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v136, v150, v136, 0x7fff
	v_and_b32_e32 v150, 1, v102
	v_mov_b16_e64 v102.l, v152.h
	v_and_b32_e32 v118, 1, v166
	v_perm_b32 v119, v128, v120, v80
	v_perm_b32 v120, v128, v120, v88
	v_perm_b32 v121, v122, v130, v80
	v_perm_b32 v122, v122, v130, v88
	v_cndmask_b16 v160.l, 0x7fff, v142.h, s23
	v_cndmask_b16 v135.h, 0x7fff, v125.h, s4
	v_perm_b32 v125, v145, v126, v80
	v_perm_b32 v126, v145, v126, v88
	v_cndmask_b16 v142.h, 0x7fff, v136.h, s13
	v_add3_u32 v136, v151, v150, 0x7fff
	v_and_b32_e32 v150, 1, v102
	v_mov_b16_e64 v102.l, v153.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[103:106], v90
	ds_load_b128 v[107:110], v91
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v113, v113
	v_cmp_o_f32_e64 s8, v117, v117
	v_cmp_o_f32_e64 s9, v115, v115
	v_add3_u32 v166, v113, v118, 0x7fff
	v_cmp_o_f32_e64 s14, v151, v151
	v_cmp_o_f32_e64 s15, v152, v152
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[119:126], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v152, v150, 0x7fff
	v_and_b32_e32 v14, 1, v102
	v_mov_b16_e64 v102.l, v140.h
	v_cndmask_b16 v135.l, 0x7fff, v166.h, s6
	v_cndmask_b16 v142.l, 0x7fff, v144.h, s7
	v_cndmask_b16 v144.l, 0x7fff, v167.h, s8
	v_cndmask_b16 v147.l, 0x7fff, v168.h, s9
	v_cndmask_b16 v144.h, 0x7fff, v136.h, s14
	v_cndmask_b16 v147.h, 0x7fff, v13.h, s15
	v_and_b32_e32 v119, 1, v102
	v_mov_b16_e64 v102.l, v139.h
	v_cmp_o_f32_e64 s16, v153, v153
	v_cmp_o_f32_e64 s24, v140, v140
	v_permlanex16_b32 v145, v135, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v142, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v144, s71, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v153, v14, 0x7fff
	v_permlanex16_b32 v120, v147, s71, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v119, v140, v119, 0x7fff
	v_and_b32_e32 v121, 1, v102
	v_mov_b16_e64 v102.l, v137.h
	v_perm_b32 v9, v145, v135, v80
	v_perm_b32 v10, v145, v135, v88
	v_perm_b32 v11, v12, v142, v80
	v_perm_b32 v12, v12, v142, v88
	v_perm_b32 v13, v15, v144, v80
	v_perm_b32 v14, v15, v144, v88
	v_cndmask_b16 v148.h, 0x7fff, v16.h, s16
	v_perm_b32 v15, v120, v147, v80
	v_perm_b32 v16, v120, v147, v88
	v_cndmask_b16 v149.h, 0x7fff, v119.h, s24
	v_and_b32_e32 v119, 1, v102
	v_mov_b16_e64 v102.l, v138.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[111:114], v93
	ds_load_b128 v[115:118], v94
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[103:110], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v134, v134
	v_cmp_o_f32_e64 s25, v139, v139
	v_and_b32_e32 v14, 1, v102
	v_mov_b16_e64 v102.l, v141.h
	v_add3_u32 v121, v139, v121, 0x7fff
	v_add3_u32 v13, v137, v119, 0x7fff
	v_cndmask_b16 v148.l, 0x7fff, v169.h, s10
	v_cndmask_b16 v158.l, 0x7fff, v156.h, s21
	v_and_b32_e32 v16, 1, v102
	v_mov_b16_e64 v102.l, v143.h
	v_cndmask_b16 v154.h, 0x7fff, v121.h, s25
	v_cndmask_b16 v156.h, 0x7fff, v13.h, s26
	v_add3_u32 v103, v138, v14, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[127:130], v95
	ds_load_b128 v[131:134], v96
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v105, 1, v102
	v_mov_b16_e64 v102.l, v155.h
	v_cmp_o_f32_e64 s29, v143, v143
	v_permlanex16_b32 v120, v148, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v149, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v154, s71, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v102, 1, v102
	v_permlanex16_b32 v104, v156, s71, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v157.h, 0x7fff, v103.h, s27
	v_add3_u32 v103, v141, v16, 0x7fff
	v_add3_u32 v105, v143, v105, 0x7fff
	v_add3_u32 v102, v155, v102, 0x7fff
	v_perm_b32 v9, v120, v148, v80
	v_perm_b32 v10, v120, v148, v88
	v_perm_b32 v11, v12, v149, v80
	v_perm_b32 v12, v12, v149, v88
	v_perm_b32 v13, v15, v154, v80
	v_perm_b32 v14, v15, v154, v88
	v_perm_b32 v15, v104, v156, v80
	v_perm_b32 v16, v104, v156, v88
	v_cndmask_b16 v158.h, 0x7fff, v103.h, s28
	v_cndmask_b16 v159.h, 0x7fff, v105.h, s29
	v_cndmask_b16 v160.h, 0x7fff, v102.h, s30
	v_permlanex16_b32 v104, v157, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[111:118], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v12, v158, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v159, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v160, s71, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v104, v157, v80
	v_perm_b32 v10, v104, v157, v88
	v_perm_b32 v11, v12, v158, v80
	v_perm_b32 v12, v12, v158, v88
	v_perm_b32 v13, v14, v159, v80
	v_perm_b32 v14, v14, v159, v88
	v_perm_b32 v15, v16, v160, v80
	v_perm_b32 v16, v16, v160, v88
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v100, v165, v146
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[127:134], v[9:16], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v101, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v100, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v28
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s55, s55, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s54, s55
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v101 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v100, vcc_lo
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp63:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp78:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp82:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v13 :: v_dual_mov_b32 v19, v15
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp131:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp137:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v27
	v_and_b32_e32 v1, 28, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
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
.Ltmp138:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 179
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 179
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8752
; TotalNumSgprs: 75
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 179
; Occupancy: 8
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
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
