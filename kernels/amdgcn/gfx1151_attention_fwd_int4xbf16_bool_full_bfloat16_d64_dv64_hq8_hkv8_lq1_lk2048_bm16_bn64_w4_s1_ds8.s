	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s59, s[0:1], 0x64
	s_load_b32 s72, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v10, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v53, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s59
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s72, v1
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s59
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s58, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s72, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s59, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s5, s4, s59
	s_abs_i32 s4, s4
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s6, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v53, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s7, s6, s8
	s_add_i32 s9, s6, 1
	s_sub_i32 s4, s4, s7
	v_lshrrev_b32_e32 v58, 3, v2
	s_sub_i32 s2, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s5
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s58, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s73, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s4, s73, s2
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s74, s4, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s73, s74
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v11, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr11
.LBB0_3:                                ; %Flow83
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v57, 0x78, v0
	v_and_b32_e32 v56, 15, v0
	v_lshlrev_b32_e32 v54, 1, v0
	v_and_b32_e32 v55, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v56
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v56, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_and_b32_e32 v14, 28, v0
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	v_bfe_i32 v19, v0, 3, 1
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_lshlrev_b32 v24, 4, v10
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v1, 0x80000000, v3 :: v_dual_lshlrev_b32 v6, 4, v0
	s_clause 0x1
	s_load_b64 s[46:47], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_and_b32 v13, 16, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	v_and_b32_e32 v27, 0x420, v19
	v_xor_b32_e32 v28, v24, v57
	v_lshl_or_b32 v24, v2, 6, v24
	v_and_or_b32 v19, 0x410, v19, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_dual_mov_b32 v22, 0x5410 :: v_dual_lshlrev_b32 v11, 3, v10
	buffer_load_u16 v12, v1, s[60:63], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v5, 24, v54
	v_and_b32_e32 v7, 24, v0
	v_dual_mov_b32 v23, 0x7632 :: v_dual_lshlrev_b32 v8, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v25, v56, 5, v5
	v_cndmask_b32_e64 v15, 0x420, 0, vcc_lo
	v_dual_mov_b32 v61, 0xff800000 :: v_dual_lshlrev_b32 v16, 3, v0
	v_bfe_i32 v18, v0, 2, 1
	v_bfe_i32 v20, v0, 5, 1
	v_cmp_eq_u32_e64 s1, 0, v13
	v_xor_b32_e32 v29, 8, v25
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v3, 1, v57
	v_xor_b32_e32 v65, v6, v7
	v_and_or_b32 v67, 0x3e0, v8, v14
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v18, 0x840, v18
	v_and_or_b32 v15, v16, 16, v15
	v_and_b32_e32 v16, 0x60, v8
	v_dual_mov_b32 v69, v1 :: v_dual_and_b32 v20, 0x840, v20
	v_cndmask_b32_e64 v22, 0x1054, v22, s1
	v_mov_b32_e32 v6, v1
	v_lshlrev_b32_e32 v14, 4, v7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v30, 16, v25
	v_add_nc_u32_e32 v68, 0, v25
	v_xor_b32_e32 v25, 24, v25
	v_add_nc_u32_e32 v95, 0, v29
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v17, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v64, 0x800, v3
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v96, 0, v30
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v97, 0, v25
	v_xor_b32_e32 v60, v53, v58
	v_lshl_add_u32 v17, v17, 7, 0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v4, v0, 4, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v26, 0x210, v60
	s_add_i32 s2, s3, s0
	v_xor_b32_e32 v31, 8, v65
	v_lshl_or_b32 v85, v10, 10, v28
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	v_mul_lo_u32 v9, v9, s15
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s75, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_or_b32_e32 v66, s75, v4
	v_xor_b32_e32 v32, 4, v67
	v_xor_b32_e32 v33, 8, v67
	v_xor_b32_e32 v34, 12, v67
	v_xor_b32_e32 v35, 16, v67
	v_xor_b32_e32 v36, 20, v67
	v_xor_b32_e32 v37, 24, v67
	v_xor_b32_e32 v38, 28, v67
	v_add_nc_u32_e32 v86, 0, v26
	v_xor_b32_e32 v25, 0x2d0, v85
	v_xor_b32_e32 v26, 0x360, v85
	v_add_nc_u32_e32 v99, 0, v31
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v59, 1, v0
	s_add_i32 s8, s8, s2
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v41, 4, v55
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v62, 0x800, v11
	v_sub_nc_u32_e32 v63, 0x800, v4
	v_mov_b32_e32 v4, v1
	v_or_b32_e32 v70, 18, v66
	v_or_b32_e32 v71, 20, v66
	v_or_b32_e32 v72, 22, v66
	v_or_b32_e32 v73, 24, v66
	v_or_b32_e32 v74, 26, v66
	v_or_b32_e32 v75, 28, v66
	v_or_b32_e32 v76, 30, v66
	v_or_b32_e32 v77, 32, v66
	v_or_b32_e32 v78, 34, v66
	v_or_b32_e32 v79, 36, v66
	v_or_b32_e32 v80, 38, v66
	v_or_b32_e32 v81, 40, v66
	v_or_b32_e32 v82, 42, v66
	v_or_b32_e32 v83, 44, v66
	v_or_b32_e32 v87, 46, v66
	v_or_b32_e32 v88, 48, v66
	v_or_b32_e32 v89, 50, v66
	v_or_b32_e32 v90, 52, v66
	v_or_b32_e32 v91, 54, v66
	v_or_b32_e32 v92, 56, v66
	v_or_b32_e32 v93, 58, v66
	v_or_b32_e32 v94, 60, v66
	v_add_nc_u32_e32 v100, 0, v32
	v_add_nc_u32_e32 v101, 0, v33
	v_add_nc_u32_e32 v102, 0, v34
	v_add_nc_u32_e32 v103, 0, v35
	v_add_nc_u32_e32 v104, 0, v36
	v_add_nc_u32_e32 v105, 0, v37
	v_add_nc_u32_e32 v106, 0, v38
	v_add_nc_u32_e32 v115, 0, v25
	v_add_nc_u32_e32 v116, 0, v26
	v_add3_u32 v126, s8, v11, v9
	v_or_b32_e32 v129, 62, v66
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s76, s45, 1
	s_mul_i32 s77, s45, 3
	s_mov_b32 s78, 0x76543210
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s65, s11
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s72, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s45, v3, v[11:12]
	v_mov_b32_e32 v3, v1
	v_or3_b32 v84, v15, v18, v14
	v_xor3_b32 v14, v27, v16, v20
	v_cndmask_b32_e64 v15, 0x3276, v23, s1
	v_lshl_or_b32 v16, v22, 8, v22
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v68
	ds_load_b64 v[45:46], v95
	ds_load_b64 v[47:48], v96
	ds_load_b64 v[49:50], v97
	v_xor_b32_e32 v18, v19, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	v_lshl_or_b32 v15, v15, 8, v15
	v_and_b32_e32 v16, 0x540054, v16
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v12, 16, v12
	v_and_b32_e32 v21, 0x80, v54
	v_lshl_or_b32 v98, v10, 7, v18
	v_and_b32_e32 v15, 0x760076, v15
	v_lshl_or_b32 v10, v16, 4, v16
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v128, s1, v12
	v_add3_u32 v14, v17, v21, v14
	v_xor_b32_e32 v19, 32, v84
	v_xor_b32_e32 v20, 64, v84
	v_xor_b32_e32 v22, 0x60, v84
	v_xor_b32_e32 v17, 0x90, v85
	v_xor_b32_e32 v21, 0x120, v85
	v_xor_b32_e32 v23, 0x1b0, v85
	v_xor_b32_e32 v24, 0x240, v85
	v_xor_b32_e32 v27, 0x3f0, v85
	v_xor_b32_e32 v16, 16, v98
	v_xor_b32_e32 v18, 32, v98
	v_xor_b32_e32 v28, 48, v98
	v_xor_b32_e32 v29, 64, v98
	v_xor_b32_e32 v30, 0x50, v98
	v_xor_b32_e32 v31, 0x60, v98
	v_add_nc_u32_e32 v107, v14, v13
	v_xor_b32_e32 v13, 0x70, v98
	v_and_b32_e32 v118, 0x5040504, v10
	v_lshl_or_b32 v10, v15, 4, v15
	v_add_nc_u32_e32 v108, 0, v19
	v_add_nc_u32_e32 v109, 0, v20
	v_add_nc_u32_e32 v110, 0, v22
	v_add_nc_u32_e32 v111, 0, v17
	v_add_nc_u32_e32 v112, 0, v21
	v_add_nc_u32_e32 v113, 0, v23
	v_add_nc_u32_e32 v114, 0, v24
	v_add_nc_u32_e32 v117, 0, v27
	v_add_nc_u32_e32 v119, 0, v16
	v_add_nc_u32_e32 v120, 0, v18
	v_add_nc_u32_e32 v121, 0, v28
	v_add_nc_u32_e32 v122, 0, v29
	v_add_nc_u32_e32 v123, 0, v30
	v_add_nc_u32_e32 v124, 0, v31
	v_add_nc_u32_e32 v125, 0, v13
	v_and_b32_e32 v127, 0x7060706, v10
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e64 v132.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v165, 8, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v144.h, v143.l
	v_mov_b16_e64 v143.h, v142.l
	v_mov_b16_e64 v143.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_mul_f32_e32 v166, v128, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v10, 8, v51
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v142.h, v141.l
	v_mov_b16_e64 v141.l, v132.l
	v_mov_b16_e64 v141.h, v140.l
	v_mov_b16_e64 v134.h, v133.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v133, v128, v9
	v_mul_f32_e32 v167, v128, v11
	v_mul_f32_e32 v168, v128, v12
	v_mul_f32_e32 v169, v128, v13
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v51.l
	v_and_b16 v9.h, 0xff, v10.l
	v_and_b16 v10.l, 0xff, v51.h
	v_lshrrev_b32_e32 v12, 24, v51
	v_and_b16 v11.l, 0xff, v165.l
	v_and_b16 v11.h, 0xff, v52.h
	v_lshrrev_b32_e32 v13, 24, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v139.l, v132.l
	v_mov_b16_e64 v139.h, v138.l
	v_mov_b16_e64 v137.h, v136.l
	v_mov_b16_e64 v136.l, v132.l
	v_mov_b16_e64 v136.h, v135.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v14, v128, v14
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v10.h, 0xff, v52.l
	v_cmp_ne_u16_e64 s1, 0, v9.l
	v_cmp_ne_u16_e64 s2, 0, v9.h
	v_cmp_ne_u16_e64 s4, 0, v10.l
	v_cmp_ne_u16_e64 s5, 0, v12.l
	v_cmp_ne_u16_e64 s7, 0, v11.l
	v_cmp_ne_u16_e64 s8, 0, v11.h
	v_cmp_ne_u16_e64 s9, 0, v13.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v150.h, v149.l
	v_mov_b16_e64 v149.l, v132.l
	v_mov_b16_e64 v149.h, v148.l
	v_mov_b16_e64 v148.l, v132.l
	v_mov_b16_e64 v148.h, v147.l
	v_mov_b16_e64 v147.l, v132.l
	v_mov_b16_e64 v147.h, v146.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mul_f32 v17, v128, v17 :: v_dual_mul_f32 v136, v14, v136
	v_mul_f32_e32 v18, v128, v18
	v_mul_f32_e32 v19, v128, v19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v10.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s31, s10, s1
	s_and_b32 s33, s10, s2
	s_and_b32 s34, s10, s4
	s_and_b32 s23, s10, s8
	s_and_b32 s36, s10, s5
	s_and_b32 s26, s10, s9
	s_and_b32 s29, s10, s7
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v20, v128, v20 :: v_dual_mul_f32 v147, v19, v147
	v_mul_f32_e32 v149, v17, v149
	v_dual_mul_f32 v25, v128, v25 :: v_dual_mul_f32 v148, v18, v148
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v17, 0, 1, s31
	v_cndmask_b32_e64 v18, 0, 1, s33
	v_cndmask_b32_e64 v10, 0, 1, s34
	v_cndmask_b32_e64 v9, 0, 1, s23
	v_cndmask_b32_e64 v13, 0, 1, s36
	v_cndmask_b32_e64 v11, 0, 1, s26
	v_cndmask_b32_e64 v19, 0, 1, s29
	s_and_b32 s27, s10, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v12, 0, 1, s27
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e32 v10.l, v17.l
	v_lshlrev_b16 v10.h, 8, v11.l
	v_mov_b16_e32 v11.l, v19.l
	v_lshlrev_b16 v11.h, 8, v13.l
	v_mov_b16_e32 v13.l, v18.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v128, v22
	v_mul_f32_e32 v24, v128, v24
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v12.h, v12.l, v9.l
	v_or_b16 v12.l, v10.l, v9.h
	v_add_nc_u32_e32 v9, 0, v60
	v_or_b16 v10.h, v11.l, v10.h
	v_or_b16 v10.l, v13.l, v11.h
	v_add_nc_u32_e32 v11, 0, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	ds_store_b32 v86, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v11
	ds_load_b32 v12, v100
	ds_load_b32 v13, v101
	ds_load_b32 v17, v102
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v158.h, v157.l
	v_mov_b16_e64 v157.l, v132.l
	v_mov_b16_e64 v157.h, v156.l
	v_mov_b16_e64 v156.l, v132.l
	v_mov_b16_e64 v156.h, v155.l
	v_mov_b16_e64 v140.l, v132.l
	v_mov_b16_e64 v138.h, v137.l
	v_mov_b16_e64 v137.l, v132.l
	v_mov_b16_e64 v135.h, v134.l
	v_mov_b16_e64 v134.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v15, v15
	v_dual_mul_f32 v26, v128, v26 :: v_dual_mul_f32 v157, v25, v157
	v_mul_f32_e32 v23, v128, v23
	v_mul_f32_e32 v16, v128, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v164.h, v162.l
	v_mov_b16_e64 v162.l, v132.l
	v_mov_b16_e64 v162.h, v161.l
	v_mov_b16_e64 v161.l, v132.l
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v152.h, v151.l
	v_mov_b16_e64 v151.l, v132.l
	v_mov_b16_e64 v151.h, v150.l
	v_mov_b16_e64 v150.l, v132.l
	v_mov_b16_e64 v146.l, v132.l
	v_mov_b16_e64 v146.h, v145.l
	v_mov_b16_e64 v145.l, v132.l
	v_mov_b16_e64 v145.h, v144.l
	v_mov_b16_e64 v135.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v27, v27
	v_dual_mul_f32 v37, v128, v37 :: v_dual_mul_f32 v156, v26, v156
	v_mul_f32_e32 v36, v128, v36
	v_mul_f32_e32 v21, v128, v21
	v_mul_f32_e32 v15, v128, v15
	v_mul_f32_e32 v133, v133, v141
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v141, v16, v134 :: v_dual_and_b32 v134, 0x10000, v12
	v_mul_f32_e32 v143, v23, v143
	v_dual_mul_f32 v31, v128, v31 :: v_dual_mul_f32 v140, v166, v140
	v_dual_mul_f32 v32, v128, v32 :: v_dual_mul_f32 v37, v37, v161
	v_mul_f32_e32 v51, v20, v146
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v31, v31, v151
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v16, 0x1000000, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v27, v128, v27 :: v_dual_mul_f32 v52, v21, v145
	v_dual_mul_f32 v32, v32, v150 :: v_dual_and_b32 v145, 1, v12
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v150, 0x10000, v13
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v36, v162 :: v_dual_mul_f32 v135, v15, v135
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v15, v103
	ds_load_b32 v19, v104
	ds_load_b32 v20, v105
	ds_load_b32 v21, v106
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v144.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v154.h, v153.l
	v_mov_b16_e64 v153.l, v132.l
	v_mov_b16_e64 v153.h, v152.l
	v_mov_b16_e64 v152.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v28, v28
	v_dual_mul_f32 v29, v128, v29 :: v_dual_mul_f32 v144, v22, v144
	v_mul_f32_e32 v30, v128, v30
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v9.l, 8, v11.l
	v_lshrrev_b16 v9.h, 8, v12.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v159.l, v132.l
	v_mov_b16_e64 v159.h, v158.l
	v_mov_b16_e64 v158.l, v132.l
	v_mov_b16_e64 v155.l, v132.l
	v_mov_b16_e64 v155.h, v154.l
	v_mov_b16_e64 v154.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v28, v128, v28 :: v_dual_mul_f32 v27, v27, v155
	v_mul_f32_e32 v29, v29, v153
	v_dual_mul_f32 v39, v128, v39 :: v_dual_mul_f32 v30, v30, v152
	v_mul_f32_e32 v40, v128, v40
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v10.l, 1, v9.l
	v_and_b16 v14.l, 1, v9.h
	v_lshrrev_b16 v9.l, 8, v13.l
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v9.h, 8, v17.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v132.h, v164.l
	v_mov_b16_e64 v163.h, v163.l
	v_mov_b16_e64 v163.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v34, v128, v34
	v_mul_f32_e32 v33, v128, v33
	v_dual_mul_f32 v39, v39, v159 :: v_dual_mul_f32 v40, v40, v158
	v_dual_mul_f32 v28, v28, v154 :: v_dual_and_b32 v23, 0x10000, v11
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v11, 1, v11
	v_and_b16 v18.l, 1, v9.l
	v_and_b16 v22.l, 1, v9.h
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v9.l, 8, v15.l
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v9.h, 8, v19.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v138.l, v132.l
	v_mov_b16_e64 v142.l, v132.l
	v_mov_b16_e64 v164.l, v132.l
	v_mov_b16_e64 v160.l, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v128, v38
	v_mul_f32_e32 v35, v128, v35
	v_dual_mul_f32 v34, v34, v163 :: v_dual_mul_f32 v33, v33, v132
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v25.l, 1, v9.l
	v_and_b16 v25.h, 1, v9.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v9.l, 8, v20.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v9.h, 8, v21.l
	v_cmp_eq_u32_e64 s42, 1, v11
	v_cmp_eq_u16_e64 s43, 1, v10.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v138, v168, v138 :: v_dual_and_b32 v153, 0x10000, v17
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v152, 0x1000000, v17
	v_and_b32_e32 v154, 1, v17
	v_and_b32_e32 v155, 0x1000000, v15
	v_and_b32_e32 v158, 0x10000, v15
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v24, v142 :: v_dual_and_b32 v159, 1, v15
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v151, 1, v13
	v_and_b32_e32 v24, 0x1000000, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v38, v160
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v160, 0x1000000, v19
	v_and_b32_e32 v161, 0x10000, v19
	v_and_b32_e32 v162, 1, v19
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v35, v164 :: v_dual_and_b32 v146, 0x1000000, v13
	v_mul_f32_e32 v139, v167, v139
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v163, 0x1000000, v20
	v_and_b32_e32 v164, 0x10000, v20
	v_and_b16 v26.l, 1, v9.l
	v_and_b32_e32 v165, 1, v20
	v_and_b32_e32 v166, 0x1000000, v21
	v_and_b16 v26.h, 1, v9.h
	v_and_b32_e32 v168, 1, v21
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v9, 0xff800000, v33, s42
	v_cndmask_b32_e64 v10, 0xff800000, v34, s43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v167, 0x10000, v21
	v_cmp_ne_u32_e64 s40, 0, v23
	v_cmp_ne_u32_e64 s41, 0, v16
	v_cmp_eq_u32_e64 s21, 1, v154
	v_cmp_eq_u16_e64 s22, 1, v22.l
	v_cmp_ne_u32_e64 s19, 0, v153
	v_cmp_ne_u32_e64 s20, 0, v152
	v_cmp_eq_u32_e64 s17, 1, v159
	v_cmp_eq_u16_e64 s18, 1, v25.l
	v_cmp_ne_u32_e64 s16, 0, v158
	v_cmp_ne_u32_e64 s15, 0, v155
	v_cmp_eq_u32_e64 s39, 1, v145
	v_cmp_eq_u16_e64 s38, 1, v14.l
	v_cmp_ne_u32_e64 s35, 0, v134
	v_cmp_ne_u32_e64 s37, 0, v24
	v_cmp_eq_u32_e64 s13, 1, v162
	v_cmp_eq_u16_e64 s14, 1, v25.h
	v_cmp_ne_u32_e64 s11, 0, v161
	v_cmp_ne_u32_e64 s12, 0, v160
	v_cmp_eq_u32_e64 s28, 1, v151
	v_cmp_eq_u16_e64 s30, 1, v18.l
	v_cmp_ne_u32_e64 s24, 0, v150
	v_cmp_ne_u32_e64 s25, 0, v146
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v169, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v35, s40
	v_cndmask_b32_e64 v12, 0xff800000, v36, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s10, 1, v165
	v_cmp_eq_u16_e64 s9, 1, v26.l
	v_cmp_ne_u32_e64 s7, 0, v164
	v_cmp_ne_u32_e64 s8, 0, v163
	v_cmp_eq_u32_e64 s6, 1, v168
	v_cmp_eq_u16_e64 s5, 1, v26.h
	v_cmp_ne_u32_e64 s1, 0, v167
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v25, 0, v84
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s4, 0, v166
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v21, 0xff800000, v29, s21
	v_cndmask_b32_e64 v22, 0xff800000, v30, s22
	v_cndmask_b32_e64 v23, 0xff800000, v31, s19
	v_cndmask_b32_e64 v24, 0xff800000, v32, s20
	v_cndmask_b32_e64 v29, 0xff800000, v149, s17
	v_cndmask_b32_e64 v30, 0xff800000, v148, s18
	v_cndmask_b32_e64 v31, 0xff800000, v147, s16
	v_cndmask_b32_e64 v32, 0xff800000, v51, s15
	v_cndmask_b32_e64 v13, 0xff800000, v37, s39
	v_cndmask_b32_e64 v14, 0xff800000, v38, s38
	v_cndmask_b32_e64 v15, 0xff800000, v39, s35
	v_cndmask_b32_e64 v16, 0xff800000, v40, s37
	v_cndmask_b32_e64 v33, 0xff800000, v52, s13
	v_cndmask_b32_e64 v34, 0xff800000, v144, s14
	v_cndmask_b32_e64 v35, 0xff800000, v143, s11
	v_cndmask_b32_e64 v36, 0xff800000, v142, s12
	v_cndmask_b32_e64 v17, 0xff800000, v157, s28
	v_cndmask_b32_e64 v18, 0xff800000, v156, s30
	v_cndmask_b32_e64 v19, 0xff800000, v27, s24
	v_cndmask_b32_e64 v20, 0xff800000, v28, s25
	v_cndmask_b32_e64 v37, 0xff800000, v133, s10
	v_cndmask_b32_e64 v38, 0xff800000, v140, s9
	v_cndmask_b32_e64 v39, 0xff800000, v139, s7
	v_cndmask_b32_e64 v40, 0xff800000, v138, s8
	v_cndmask_b32_e64 v133, 0xff800000, v137, s6
	v_cndmask_b32_e64 v134, 0xff800000, v136, s5
	v_cndmask_b32_e64 v135, 0xff800000, v135, s1
	v_cndmask_b32_e64 v136, 0xff800000, v141, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v25, v[9:12]
	ds_store_b128 v25, v[29:32] offset:512
	ds_store_b128 v108, v[13:16]
	ds_store_b128 v108, v[33:36] offset:512
	ds_store_b128 v109, v[17:20]
	ds_store_b128 v109, v[37:40] offset:512
	ds_store_b128 v110, v[21:24]
	ds_store_b128 v110, v[133:136] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v107 offset:256
	ds_load_b128 v[141:144], v107
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v18, v19, v20
	v_max3_f32 v52, v21, v22, v23
	v_max3_f32 v145, v24, v29, v30
	v_max3_f32 v146, v31, v32, v33
	v_max3_f32 v147, v34, v35, v36
	v_max3_f32 v148, v37, v38, v39
	v_dual_max_f32 v149, v40, v133 :: v_dual_max_f32 v150, v135, v136
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v130
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v25, v140, v140
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v26, v144, v144
	v_max3_f32 v27, v141, v137, v142
	v_max3_f32 v28, v138, v143, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v25, v26, v25
	v_max3_f32 v25, v27, v28, v25
	v_max3_f32 v27, v12, v13, v14
	v_max3_f32 v28, v15, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v25
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v25, v25, v26
	v_max_f32_e32 v26, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v26, v26, v11, v27
	v_max3_f32 v27, v51, v52, v145
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v25
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v146, v147, v148
	v_max3_f32 v145, v149, v134, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v26, v26, v28, v27
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v26, v26, v52, v145
	v_dual_max_f32 v27, v51, v51 :: v_dual_max_f32 v52, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v28, v26, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v25, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v27, v130, v26, v28
	v_dual_max_f32 v61, v52, v25 :: v_dual_sub_f32 v146, v15, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v51, v131, v131 :: v_dual_sub_f32 v140, v140, v61
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v130, v27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v142, v61
	v_sub_f32_e32 v142, v10, v27
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v26, v51, v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v141, v61
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v9, v27
	v_mad_u64_u32 v[9:10], null, s79, s45, v[42:43]
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v51, v131, v26 :: v_dual_sub_f32 v148, v17, v27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v19, v27
	v_sub_f32_e32 v152, v21, v27
	v_sub_f32_e32 v154, v23, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v51, v51
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v52, 0, v28, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v131
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v131, v138, v61
	v_sub_f32_e32 v138, v139, v61
	v_sub_f32_e32 v139, v144, v61
	v_sub_f32_e32 v144, v12, v27
	v_dual_sub_f32 v145, v14, v27 :: v_dual_mul_f32 v4, v4, v52
	v_dual_sub_f32 v147, v16, v27 :: v_dual_mul_f32 v6, v6, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v28, 0, v51, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v137, v61
	v_sub_f32_e32 v137, v143, v61
	v_dual_sub_f32 v143, v11, v27 :: v_dual_mul_f32 v2, v2, v52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v25
	v_exp_f32_e32 v12, v51
	v_exp_f32_e32 v14, v130
	v_exp_f32_e32 v15, v131
	v_exp_f32_e32 v16, v137
	v_exp_f32_e32 v10, v138
	v_exp_f32_e32 v17, v139
	v_exp_f32_e32 v51, v140
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v20, v27
	v_sub_f32_e32 v29, v29, v27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v11, s31
	v_cndmask_b32_e64 v131, 0, v12, s33
	v_cndmask_b32_e64 v137, 0, v14, s34
	v_cndmask_b32_e64 v138, 0, v15, s36
	v_cndmask_b32_e64 v139, 0, v16, s27
	v_cndmask_b32_e64 v140, 0, v10, s29
	v_cndmask_b32_e64 v156, 0, v17, s23
	v_cndmask_b32_e64 v51, 0, v51, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v27
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v130, v130, v131 :: v_dual_add_f32 v131, v137, v138
	v_add_f32_e32 v137, v139, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v51, v156, v51
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v145
	v_exp_f32_e32 v145, v151
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v130, v130, v131
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v134, v27
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v137, v51
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v136, v27 :: v_dual_mul_f32 v5, v5, v52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v141
	v_exp_f32_e32 v141, v146
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v130, v51
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v27
	v_sub_f32_e32 v130, v133, v27
	v_sub_f32_e32 v133, v135, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v151, v29
.Ltmp25:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v135, v51
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v142
	v_exp_f32_e32 v139, v144
	v_exp_f32_e32 v138, v143
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s73, v64
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v135, v135 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v149, v18, v27 :: v_dual_mul_f32 v8, v8, v52
	v_dual_sub_f32 v30, v30, v27 :: v_dual_lshlrev_b32 v11, 1, v9
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v135
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v12, v9, s76, 1
	v_add_lshl_u32 v14, v9, s45, 1
	v_add_lshl_u32 v9, v9, s77, 1
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v146, v51
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v38, v38, v27 :: v_dual_mul_f32 v1, v1, v52
	v_dual_sub_f32 v40, v40, v27 :: v_dual_mul_f32 v3, v3, v52
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v146, v146 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s42
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v52
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v51, v146
.Ltmp36:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v139, s41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v136.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v51, v29
.Ltmp38:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v9, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.h, v132.l
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v138, s40
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v142, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v139, 1, v146
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v29, v51
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v137, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v132.l
	v_mov_b16_e64 v146.l, v138.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v139, v136, v139, 0x7fff
	v_mov_b16_e64 v137.l, v51.h
	v_cmp_o_f32_e64 s2, v51, v51
	v_cmp_o_f32_e64 s23, v52, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v149
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v137, 1, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v13, v13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v150
	v_exp_f32_e32 v147, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v51, v137, 0x7fff
	v_mov_b16_e32 v51.l, v52.h
	v_mov_b16_e64 v51.h, v132.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v154
	v_exp_f32_e32 v30, v30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s2
	v_cmp_o_f32_e64 s2, v136, v136
	v_and_b32_e32 v51, 1, v51
	v_and_b32_e32 v136, 1, v146
	v_mov_b16_e64 v146.l, v140.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.l, 0x7fff, v139.h, s2
	v_add3_u32 v51, v52, v51, 0x7fff
	v_mov_b16_e32 v52.l, v13.h
	v_mov_b16_e64 v52.h, v132.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v22, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v138, v136, 0x7fff
	v_and_b32_e32 v139, 1, v146
	v_cmp_o_f32_e64 s2, v138, v138
	v_and_b32_e32 v52, 1, v52
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v142, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s23
	v_add3_u32 v139, v140, v139, 0x7fff
	v_cmp_o_f32_e64 s23, v140, v140
	v_add3_u32 v52, v13, v52, 0x7fff
	v_mov_b16_e64 v140.l, v138.h
	v_mov_b16_e64 v140.h, v132.l
	v_mov_b16_e64 v142.l, v141.h
	v_mov_b16_e64 v142.h, v132.l
	v_cndmask_b16 v51.l, 0x7fff, v136.h, s2
	v_cndmask_b16 v136.h, 0x7fff, v139.h, s23
	v_and_b32_e32 v13, 1, v140
	v_cndmask_b16 v136.l, 0x7fff, v52.h, s26
	v_and_b32_e32 v139, 1, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v143, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v138, v138
	v_add3_u32 v13, v138, v13, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v141, v139, 0x7fff
	v_mov_b16_e64 v139.l, v52.h
	v_mov_b16_e64 v139.h, v132.l
	v_cndmask_b16 v140.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v141, v141
	v_mov_b16_e64 v13.l, v135.h
	v_mov_b16_e64 v13.h, v132.l
	v_and_b32_e32 v139, 1, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v145, s25
	v_cndmask_b32_e64 v142, 0, v144, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v140.l, 0x7fff, v138.h, s2
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v138, v52, v139, 0x7fff
	v_mov_b16_e64 v139.l, v141.h
	v_mov_b16_e64 v139.h, v132.l
	v_mov_b16_e64 v143.l, v142.h
	v_mov_b16_e64 v143.h, v132.l
	v_add3_u32 v13, v135, v13, 0x7fff
	v_cmp_o_f32_e64 s23, v135, v135
	v_and_b32_e32 v135, 1, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v148, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v52, v52
	v_and_b32_e32 v52, 1, v143
	v_cndmask_b16 v138.l, 0x7fff, v13.h, s23
	v_mov_b16_e64 v144.h, v132.l
	v_mov_b16_e64 v143.l, v139.h
	v_cndmask_b16 v138.h, 0x7fff, v138.h, s2
	v_add3_u32 v13, v142, v52, 0x7fff
	v_add3_u32 v52, v141, v135, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v147, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v141, v141
	v_cmp_o_f32_e64 s21, v142, v142
	v_and_b32_e32 v142, 1, v143
	v_mov_b16_e64 v141.h, v132.l
	v_mov_b16_e64 v141.l, v135.h
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s2
	v_cmp_o_f32_e64 s2, v139, v139
	v_add3_u32 v142, v139, v142, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v149, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	v_mov_b16_e64 v145.h, v132.l
	v_cndmask_b16 v52.l, 0x7fff, v13.h, s21
	v_cndmask_b16 v142.h, 0x7fff, v142.h, s2
	v_mov_b16_e64 v144.l, v139.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v24, v27
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[22:25], v12, s[68:71], 0 offen
	buffer_load_b128 v[18:21], v11, s[68:71], 0 offen
	buffer_load_b128 v[9:12], v14, s[68:71], 0 offen
	buffer_load_b128 v[14:17], v15, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v135, v141, 0x7fff
	v_cmp_o_f32_e64 s2, v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v151, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v155
	v_exp_f32_e32 v32, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v142.l, 0x7fff, v141.h, s2
	v_mov_b16_e64 v145.l, v135.h
	v_add3_u32 v141, v139, v144, 0x7fff
	v_cmp_o_f32_e64 s2, v139, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v33, v33, v27 :: v_dual_and_b32 v144, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v150, s20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v32, 0, v32, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v139, v135, v144, 0x7fff
	v_mov_b16_e64 v144.h, v132.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v13.h
	v_cmp_o_f32_e64 s17, v13, v13
	v_mov_b16_e64 v145.l, v32.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v30, v30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v143, v13, v143, 0x7fff
	v_mov_b16_e32 v13.l, v30.h
	v_mov_b16_e64 v13.h, v132.l
	v_cndmask_b16 v143.l, 0x7fff, v141.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v135, v135
	v_and_b32_e32 v135, 1, v145
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s2, v32, v32
	v_mov_b16_e64 v144.l, v31.h
	v_cmp_o_f32_e64 s13, v31, v31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v30, v13, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v39, v39, v27 :: v_dual_and_b32 v30, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v141.h, 0x7fff, v13.h, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v31, v30, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v34, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v32, v135, 0x7fff
	v_mov_b16_e64 v31.h, v132.l
	v_mov_b16_e32 v32.l, v33.h
	v_mov_b16_e64 v32.h, v132.l
	v_mov_b16_e32 v31.l, v30.h
	v_cndmask_b16 v144.h, 0x7fff, v34.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v36, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v144.l, 0x7fff, v13.h, s13
	v_cmp_o_f32_e64 s2, v30, v30
	v_and_b32_e32 v13, 1, v31
	v_and_b32_e32 v31, 1, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v35, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_mov_b16_e64 v35.h, v132.l
	v_add3_u32 v13, v30, v13, 0x7fff
	v_mov_b16_e64 v30.h, v132.l
	v_mov_b16_e32 v30.l, v32.h
	v_add3_u32 v31, v33, v31, 0x7fff
	v_and_b32_e32 v35, 1, v35
	v_cndmask_b16 v145.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s2, v34, v34
	v_and_b32_e32 v13, 1, v30
	v_cmp_o_f32_e64 s11, v33, v33
	v_add3_u32 v30, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.h, v132.l
	v_add3_u32 v13, v32, v13, 0x7fff
	v_cndmask_b16 v145.l, 0x7fff, v31.h, s11
	v_cndmask_b16 v162.h, 0x7fff, v30.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v38, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.h, v132.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v132.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v30.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v39, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v36.h, v132.l
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s2, v30, v30
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v30, v33, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v37, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v32, v32
	v_mov_b16_e64 v32.h, v132.l
	v_and_b32_e32 v30, 1, v36
	v_mov_b16_e64 v37.h, v132.l
	v_mov_b16_e32 v32.l, v31.h
	v_cndmask_b16 v162.l, 0x7fff, v13.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v40, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v31, v31
	v_cndmask_b16 v40.h, 0x7fff, v33.h, s2
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v134, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v13.h
	v_cmp_o_f32_e64 s8, v13, v13
	v_add3_u32 v30, v34, v30, 0x7fff
	v_add3_u32 v32, v31, v32, 0x7fff
	v_mov_b16_e32 v37.l, v33.h
	v_and_b32_e32 v35, 1, v35
	v_cndmask_b16 v141.l, 0x7fff, v139.h, s16
	v_permlanex16_b32 v139, v143, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v40.l, 0x7fff, v32.h, s7
	v_mov_b16_e64 v32.h, v132.l
	v_add3_u32 v31, v13, v35, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v130, s6
	v_cndmask_b32_e64 v35, 0, v133, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v34, v34
	v_and_b32_e32 v37, 1, v37
	v_cndmask_b16 v163.h, 0x7fff, v31.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v131, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.l, v13.h
	v_mov_b16_e32 v38.l, v35.h
	v_cmp_o_f32_e64 s4, v13, v13
	v_cmp_o_f32_e64 s6, v35, v35
	v_mov_b16_e32 v36.l, v31.h
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v34, 1, v38
	v_cmp_o_f32_e64 s2, v31, v31
	v_cmp_o_f32_e64 s5, v33, v33
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v32, v13, v32, 0x7fff
	v_add3_u32 v13, v35, v34, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v30.h, s1
	v_permlanex16_b32 v35, v136, s78, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v36, v31, v36, 0x7fff
	v_add3_u32 v31, v33, v37, 0x7fff
	v_cndmask_b16 v165.l, 0x7fff, v13.h, s6
	v_permlanex16_b32 v13, v137, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v51, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v140, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v165.h, 0x7fff, v31.h, s5
	v_permlanex16_b32 v131, v138, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v30, v13, v137, v118
	v_perm_b32 v31, v13, v137, v127
	v_permlanex16_b32 v154, v141, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v155, v144, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v164.h, 0x7fff, v36.h, s2
	v_cndmask_b16 v164.l, 0x7fff, v32.h, s4
	v_permlanex16_b32 v133, v52, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v135, v142, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v33, v51, v118
	v_perm_b32 v33, v33, v51, v127
	v_perm_b32 v34, v35, v136, v118
	v_perm_b32 v35, v35, v136, v127
	v_perm_b32 v36, v37, v140, v118
	v_perm_b32 v37, v37, v140, v127
	v_perm_b32 v130, v131, v138, v118
	v_perm_b32 v131, v131, v138, v127
	v_perm_b32 v136, v139, v143, v118
	v_perm_b32 v137, v139, v143, v127
	v_perm_b32 v138, v154, v141, v118
	v_perm_b32 v139, v154, v141, v127
	v_perm_b32 v140, v155, v144, v118
	v_perm_b32 v141, v155, v144, v127
	v_permlanex16_b32 v166, v145, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v167, v162, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v132, v133, v52, v118
	v_perm_b32 v133, v133, v52, v127
	v_perm_b32 v134, v135, v142, v118
	v_perm_b32 v135, v135, v142, v127
	v_permlanex16_b32 v168, v40, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v169, v163, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v170, v164, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v171, v165, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v142, v166, v145, v118
	v_perm_b32 v143, v166, v145, v127
	v_perm_b32 v144, v167, v162, v118
	v_perm_b32 v145, v167, v162, v127
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v29, v69, v28
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s73, s73, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s73, s74
	v_mov_b32_e32 v69, v29
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v39.l, v22.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v38.l, v18.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v9.l
	v_mov_b16_e32 v9.l, v18.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v39.h, v14.l
	v_add_nc_u32_e32 v18, 0, v85
	v_mov_b16_e32 v14.l, v22.h
	v_mov_b32_e32 v13, v9
	ds_store_b64 v18, v[38:39]
	ds_store_b64 v111, v[13:14]
	v_mov_b16_e32 v38.h, v10.l
	v_mov_b16_e32 v10.l, v19.h
	v_mov_b16_e32 v39.l, v23.l
	v_mov_b16_e32 v39.h, v15.l
	v_mov_b16_e32 v38.l, v19.l
	v_mov_b16_e32 v9.h, v11.l
	v_mov_b16_e32 v11.l, v20.h
	v_mov_b16_e32 v15.l, v23.h
	v_mov_b32_e32 v14, v10
	v_mov_b16_e32 v10.l, v24.l
	v_mov_b16_e32 v10.h, v16.l
	v_mov_b16_e32 v9.l, v20.l
	ds_store_b64 v112, v[38:39]
	ds_store_b64 v113, v[14:15]
	v_mov_b16_e32 v16.l, v24.h
	v_mov_b32_e32 v15, v11
	v_mov_b16_e32 v19.h, v17.l
	v_mov_b16_e32 v17.l, v25.h
	v_mov_b16_e32 v19.l, v25.l
	v_mov_b16_e32 v18.l, v21.l
	v_mov_b16_e32 v18.h, v12.l
	ds_store_b64 v114, v[9:10]
	ds_store_b64 v115, v[15:16]
	v_add_nc_u32_e32 v9, 0, v98
	v_mov_b16_e32 v12.l, v21.h
	v_mov_b32_e32 v13, v17
	ds_store_b64 v116, v[18:19]
	ds_store_b64 v117, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v9
	ds_load_b128 v[13:16], v119
	ds_load_b128 v[17:20], v120
	ds_load_b128 v[21:24], v121
	ds_load_b128 v[146:149], v122
	ds_load_b128 v[150:153], v123
	ds_load_b128 v[154:157], v124
	ds_load_b128 v[158:161], v125
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[30:37], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v9, v168, v40, v118
	v_perm_b32 v10, v168, v40, v127
	v_perm_b32 v11, v169, v163, v118
	v_perm_b32 v12, v169, v163, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[130:137], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v13, v170, v164, v118
	v_perm_b32 v14, v170, v164, v127
	v_perm_b32 v15, v171, v165, v118
	v_perm_b32 v16, v171, v165, v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[146:153], v[138:145], v[1:8]
	v_dual_mov_b32 v130, v27 :: v_dual_mov_b32 v131, v26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_9
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s79, s73, s75
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v11, 0x800, v59
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v9, s79, v59
	v_or_b32_e32 v15, 2, v66
	v_or_b32_e32 v16, 4, v66
	v_or_b32_e32 v17, 6, v66
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s73, v11
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s72, v[41:42]
	v_or_b32_e32 v18, 8, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, s73, v66, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s1, vcc_lo, s1
	v_or_b32_e32 v19, 10, v66
	v_or_b32_e32 v20, 12, v66
	v_or_b32_e32 v21, 14, v66
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s1, s73, v63
	v_or_b32_e32 v22, 16, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v15, v15, s73, 1
	v_add_lshl_u32 v16, v16, s73, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[9:12], v9, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v17, v17, s73, 1
	v_add_lshl_u32 v133, v94, s73, 1
	v_add_lshl_u32 v18, v18, s73, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v13, 0, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v23, v70, s73, 1
	v_add_lshl_u32 v24, v71, s73, 1
	v_add_lshl_u32 v25, v72, s73, 1
	v_add_lshl_u32 v26, v73, s73, 1
	v_add_lshl_u32 v27, v74, s73, 1
	v_add_lshl_u32 v28, v75, s73, 1
	v_add_lshl_u32 v29, v76, s73, 1
	v_add_lshl_u32 v30, v77, s73, 1
	v_add_lshl_u32 v31, v78, s73, 1
	v_add_lshl_u32 v32, v79, s73, 1
	v_add_lshl_u32 v33, v80, s73, 1
	v_add_lshl_u32 v34, v81, s73, 1
	v_add_lshl_u32 v35, v82, s73, 1
	v_add_lshl_u32 v36, v83, s73, 1
	v_add_lshl_u32 v37, v87, s73, 1
	v_add_lshl_u32 v38, v88, s73, 1
	v_add_lshl_u32 v39, v89, s73, 1
	v_add_lshl_u32 v40, v90, s73, 1
	v_add_lshl_u32 v51, v91, s73, 1
	v_add_lshl_u32 v52, v92, s73, 1
	v_add_lshl_u32 v132, v93, s73, 1
	v_add_lshl_u32 v134, v129, s73, 1
	v_add_lshl_u32 v19, v19, s73, 1
	v_add_lshl_u32 v20, v20, s73, 1
	v_add_lshl_u32 v21, v21, s73, 1
	v_add_lshl_u32 v22, v22, s73, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e64 v133, 0x80000000, v133, s1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	v_cndmask_b32_e64 v165, 0x80000000, v134, s1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s73, v62
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v13, v[9:10]
	ds_store_b64 v99, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v164, v14, s[64:67], 0 offen
	buffer_load_u16 v163, v15, s[64:67], 0 offen
	buffer_load_u16 v162, v16, s[64:67], 0 offen
	buffer_load_u16 v161, v17, s[64:67], 0 offen
	buffer_load_u16 v160, v18, s[64:67], 0 offen
	buffer_load_u16 v159, v19, s[64:67], 0 offen
	buffer_load_u16 v158, v20, s[64:67], 0 offen
	buffer_load_u16 v157, v21, s[64:67], 0 offen
	buffer_load_u16 v156, v22, s[64:67], 0 offen
	buffer_load_u16 v155, v23, s[64:67], 0 offen
	buffer_load_u16 v154, v24, s[64:67], 0 offen
	buffer_load_u16 v153, v25, s[64:67], 0 offen
	buffer_load_u16 v152, v26, s[64:67], 0 offen
	buffer_load_u16 v151, v27, s[64:67], 0 offen
	buffer_load_u16 v150, v28, s[64:67], 0 offen
	buffer_load_u16 v149, v29, s[64:67], 0 offen
	buffer_load_u16 v148, v30, s[64:67], 0 offen
	buffer_load_u16 v147, v31, s[64:67], 0 offen
	buffer_load_u16 v146, v32, s[64:67], 0 offen
	buffer_load_u16 v145, v33, s[64:67], 0 offen
	buffer_load_u16 v144, v34, s[64:67], 0 offen
	buffer_load_u16 v143, v35, s[64:67], 0 offen
	buffer_load_u16 v142, v36, s[64:67], 0 offen
	buffer_load_u16 v141, v37, s[64:67], 0 offen
	buffer_load_u16 v140, v38, s[64:67], 0 offen
	buffer_load_u16 v139, v39, s[64:67], 0 offen
	buffer_load_u16 v138, v40, s[64:67], 0 offen
	buffer_load_u16 v137, v51, s[64:67], 0 offen
	buffer_load_u16 v136, v52, s[64:67], 0 offen
	buffer_load_u16 v135, v132, s[64:67], 0 offen
	buffer_load_u16 v134, v133, s[64:67], 0 offen
	buffer_load_u16 v133, v165, s[64:67], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v68 offset1:1
	ds_load_2addr_stride64_b64 v[173:176], v68 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[177:180], v95 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v95 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[185:188], v96 offset1:1
	ds_load_2addr_stride64_b64 v[189:192], v96 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[193:196], v97 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v172, s55 :: v_dual_mov_b32 v171, s54
	v_dual_mov_b32 v170, s53 :: v_dual_mov_b32 v169, s52
	v_dual_mov_b32 v168, s51 :: v_dual_mov_b32 v167, s50
	v_dual_mov_b32 v166, s49 :: v_dual_mov_b32 v165, s48
	v_mov_b32_e32 v52, 0
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[197:200], v97 offset0:2 offset1:3
	v_mov_b32_e32 v51, 0
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s44, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[43:44], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[43:44], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[173:174], v[43:44], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[43:44], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[177:178], v[45:46], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[179:180], v[45:46], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[181:182], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[45:46], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[185:186], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[49:50], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[49:50], v[9:16] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v51, s73, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s46, v51
	v_add_co_ci_u32_e64 v52, null, s47, v52, s1
	global_load_b64 v[51:52], v[51:52], off
	s_branch .LBB0_5
.LBB0_8:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v29, v8
	s_branch .LBB0_10
.LBB0_9:                                ; %Flow
	v_mov_b32_e32 v11, v58
.LBB0_10:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v57
	s_mov_b32 s1, 0x76543210
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp44:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s59, s59, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v26 :: v_dual_cndmask_b32 v12, 0, v29
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_add_nc_u32 v11, 0, v11
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp50:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s58, s59
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_and_b32 v10, 12, v53
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v14, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp57:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v16
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp61:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v17 :: v_dual_max_f32 v14, v14, v14
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v15
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v14 :: v_dual_add_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp69:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp72:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_mov_b32 v7, v9
	v_dual_add_f32 v4, v3, v5 :: v_dual_cndmask_b32 v13, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v5, v2
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v8, v9, v9 :: v_dual_mov_b32 v3, v10
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v4
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v7, v7
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v16 :: v_dual_add_f32 v1, v1, v6
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_add_f32 v7, v10, v3
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_mov_b32 v16, v11
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v8
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v18, v13
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v16, v15, v20 :: v_dual_mov_b32 v17, v12
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v16
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_add_f32 v11, v11, v15
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v15, v14, v19
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v11 :: v_dual_add_f32 v17, v16, v20
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v19, v15
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_12
; %bb.11:
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp103:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp105:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp107:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_12:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp109:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v53
	v_and_b32_e32 v4, 0xe0, v54
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_lshlrev_b32 v2, 5, v55
.Ltmp111:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp113:
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
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp114:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 201
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 201
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10276
; TotalNumSgprs: 82
; NumVgprs: 201
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 201
; Occupancy: 7
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
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
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
	.short	1032                            ; DW_AT_call_line
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     201
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
