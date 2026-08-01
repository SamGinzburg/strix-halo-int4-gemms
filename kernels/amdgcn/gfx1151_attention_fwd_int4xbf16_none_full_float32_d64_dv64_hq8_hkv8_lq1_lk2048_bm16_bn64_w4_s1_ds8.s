	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s61, s[0:1], 0x64
	s_load_b64 s[46:47], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v51, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v52, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v53, 1, v0
	s_mov_b32 s36, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s61
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s61
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
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_and_b32 s49, s49, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s61
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s60, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s46, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s61, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s61
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_mul_i32 s9, s6, s5
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b32 v4, v3, s[48:51], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s4, s4, s9
	s_add_i32 s10, s6, 1
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v5, v51, v5, 0
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s60, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s62, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s62, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s63, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s62, s63
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s13, v54
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v5, s12, v54, 1
	v_and_b32_e32 v18, 16, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v4
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v4, 0x80000000, v5 :: v_dual_and_b32 v7, 24, v52
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v21, v54, 5, v7
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v6, v0, 4, 1
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v41, 4, v53
	v_dual_mov_b32 v9, s36 :: v_dual_mov_b32 v14, s41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s9, 0xffff
	s_mov_b32 s48, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v17, v4, s[48:51], 0 offen
	v_dual_mov_b32 v19, 0x5410 :: v_dual_lshlrev_b32 v4, 3, v1
	v_mov_b32_e32 v1, 0
	v_cmp_eq_u32_e64 s2, 0, v18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 16, v21
	v_dual_mov_b32 v12, s39 :: v_dual_lshlrev_b32 v57, 4, v0
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_and_b32 v8, 24, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0x1054, v19, s2
	v_xor_b32_e32 v19, 8, v21
	v_mov_b32_e32 v10, s37
	v_lshl_add_u32 v61, v54, 1, v3
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v62, 0, v21
	v_xor_b32_e32 v21, 24, v21
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 4, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s64, s3, 11
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v58, 0x800, v6
	v_or_b32_e32 v59, s64, v6
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v75, 0, v19
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v76, 0, v23
	v_cndmask_b32_e64 v20, 0x3276, v20, s2
	v_xor_b32_e32 v22, v57, v8
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v77, 0, v21
	v_mad_u64_u32 v[42:43], null, s47, v2, v[4:5]
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[43:44], v62
	ds_load_b64 v[45:46], v75
	ds_load_b64 v[47:48], v76
	ds_load_b64 v[49:50], v77
	v_lshl_or_b32 v18, v18, 8, v18
	v_lshl_or_b32 v19, v20, 8, v20
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_xor_b32_e32 v24, 8, v22
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v55, 1, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v56, 0x800, v2
	v_dual_mov_b32 v11, s38 :: v_dual_mov_b32 v16, s43
	v_dual_mov_b32 v13, s40 :: v_dual_mov_b32 v2, v1
	v_mov_b32_e32 v15, s42
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s46, v41
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s47, v4
	v_or3_b32 v60, s64, v5, 62
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v74, 0, v22
	v_or_b32_e32 v63, 40, v59
	v_or_b32_e32 v64, 42, v59
	v_or_b32_e32 v65, 44, v59
	v_or_b32_e32 v66, 46, v59
	v_or_b32_e32 v67, 48, v59
	v_or_b32_e32 v68, 50, v59
	v_or_b32_e32 v69, 52, v59
	v_or_b32_e32 v70, 54, v59
	v_or_b32_e32 v71, 56, v59
	v_or_b32_e32 v72, 58, v59
	v_or_b32_e32 v73, 60, v59
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s65, s47, 4
	s_lshl_b32 s66, s47, 5
	s_mul_i32 s67, s47, 48
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s10
	s_mov_b32 s56, s6
	s_mov_b32 s48, s4
	s_mov_b32 s49, s5
	s_mov_b32 s53, s11
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_mov_b32_e32 v87, v1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v79, s2, v17 :: v_dual_and_b32 v18, 0x540054, v18
	v_and_b32_e32 v19, 0x760076, v19
	v_lshl_or_b32 v18, v18, 4, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v83, v79 :: v_dual_add_nc_u32 v78, 0, v24
	v_mov_b32_e32 v82, v79
	v_lshl_or_b32 v19, v19, 4, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v80, 0x5040504, v18
	v_dual_mov_b32 v84, v79 :: v_dual_and_b32 v81, 0x7060706, v19
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s5, s62, s64
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v28, s62, v59, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s62, v58
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v106, s5, v55
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v25, 0x800, v55
	v_or_b32_e32 v29, 2, v59
	v_mad_u64_u32 v[26:27], null, s5, s47, v[42:43]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v116, 0x80000000, v28, s2
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[27:28], null, v106, s46, v[41:42]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s5, s62, v25
	v_or_b32_e32 v30, 4, v59
	v_or_b32_e32 v31, 6, v59
	v_or_b32_e32 v32, 8, v59
	v_or_b32_e32 v33, 10, v59
	v_or_b32_e32 v34, 12, v59
	v_or_b32_e32 v35, 14, v59
	v_or_b32_e32 v36, 16, v59
	v_or_b32_e32 v37, 18, v59
	v_or_b32_e32 v38, 20, v59
	v_or_b32_e32 v39, 22, v59
	v_or_b32_e32 v40, 24, v59
	v_or_b32_e32 v86, 26, v59
	v_or_b32_e32 v88, 28, v59
	v_or_b32_e32 v89, 30, v59
	v_or_b32_e32 v90, 32, v59
	v_or_b32_e32 v91, 34, v59
	v_or_b32_e32 v92, 36, v59
	v_or_b32_e32 v93, 38, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v94, v63, s62, 1
	v_add_lshl_u32 v25, v29, s62, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s4, s62, v56
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s5, s0, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v29, v30, s62, 1
	v_add_lshl_u32 v30, v31, s62, 1
	v_add_lshl_u32 v31, v32, s62, 1
	v_add_lshl_u32 v32, v33, s62, 1
	v_add_lshl_u32 v33, v34, s62, 1
	v_add_lshl_u32 v34, v35, s62, 1
	v_add_lshl_u32 v35, v36, s62, 1
	v_add_lshl_u32 v36, v37, s62, 1
	v_add_lshl_u32 v37, v38, s62, 1
	v_add_lshl_u32 v38, v39, s62, 1
	v_add_lshl_u32 v39, v40, s62, 1
	v_add_lshl_u32 v40, v86, s62, 1
	v_add_lshl_u32 v86, v88, s62, 1
	v_add_lshl_u32 v88, v89, s62, 1
	v_add_lshl_u32 v89, v90, s62, 1
	v_add_lshl_u32 v90, v91, s62, 1
	v_add_lshl_u32 v91, v92, s62, 1
	v_add_lshl_u32 v92, v93, s62, 1
	v_cndmask_b32_e64 v117, 0x80000000, v94, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v28, 1, v26
	v_add_lshl_u32 v93, v26, s65, 1
	v_add_lshl_u32 v94, v26, s66, 1
	v_add_lshl_u32 v26, v26, s67, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v153, 0x80000000, v25, s2
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v25, 0x80000000, v27, s5
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s4, s1, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v140, 0x80000000, v29, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v121, 0x80000000, v28, s4
	v_cndmask_b32_e64 v172, 0x80000000, v26, s4
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[25:28], v25, s[48:51], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v154, 0x80000000, v30, s2
	v_cndmask_b32_e64 v155, 0x80000000, v31, s2
	v_cndmask_b32_e64 v156, 0x80000000, v32, s2
	v_cndmask_b32_e64 v157, 0x80000000, v33, s2
	v_cndmask_b32_e64 v158, 0x80000000, v34, s2
	v_cndmask_b32_e64 v159, 0x80000000, v35, s2
	v_cndmask_b32_e64 v160, 0x80000000, v36, s2
	v_cndmask_b32_e64 v161, 0x80000000, v37, s2
	v_cndmask_b32_e64 v162, 0x80000000, v38, s2
	v_cndmask_b32_e64 v163, 0x80000000, v39, s2
	v_cndmask_b32_e64 v164, 0x80000000, v40, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v17, s36 :: v_dual_mov_b32 v18, s37
	v_dual_mov_b32 v19, s38 :: v_dual_mov_b32 v20, s39
	v_dual_mov_b32 v21, s40 :: v_dual_mov_b32 v22, s41
	v_dual_mov_b32 v23, s42 :: v_dual_mov_b32 v24, s43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v95, v64, s62, 1
	v_add_lshl_u32 v96, v65, s62, 1
	v_add_lshl_u32 v97, v66, s62, 1
	v_add_lshl_u32 v98, v67, s62, 1
	v_add_lshl_u32 v99, v68, s62, 1
	v_add_lshl_u32 v100, v69, s62, 1
	v_add_lshl_u32 v101, v70, s62, 1
	v_add_lshl_u32 v102, v71, s62, 1
	v_add_lshl_u32 v103, v72, s62, 1
	v_add_lshl_u32 v104, v73, s62, 1
	v_add_lshl_u32 v105, s62, v60, 1
	v_cndmask_b32_e64 v118, 0x80000000, v95, s2
	v_cndmask_b32_e64 v119, 0x80000000, v96, s2
	v_cndmask_b32_e64 v120, 0x80000000, v97, s2
	v_cndmask_b32_e64 v141, 0x80000000, v98, s2
	v_cndmask_b32_e64 v142, 0x80000000, v99, s2
	v_cndmask_b32_e64 v147, 0x80000000, v100, s2
	v_cndmask_b32_e64 v148, 0x80000000, v101, s2
	v_cndmask_b32_e64 v149, 0x80000000, v102, s2
	v_cndmask_b32_e64 v150, 0x80000000, v103, s2
	v_cndmask_b32_e64 v151, 0x80000000, v104, s2
	v_cndmask_b32_e64 v152, 0x80000000, v105, s2
	v_cndmask_b32_e64 v165, 0x80000000, v88, s2
	v_cndmask_b32_e64 v166, 0x80000000, v89, s2
	v_cndmask_b32_e64 v167, 0x80000000, v90, s2
	v_cndmask_b32_e64 v168, 0x80000000, v91, s2
	v_cndmask_b32_e64 v169, 0x80000000, v92, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v170, 0x80000000, v93, s4
	v_cndmask_b32_e64 v171, 0x80000000, v94, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, vcc_lo, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s62, s62, 64
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[25:26]
	ds_store_b64 v78, v[27:28]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v62 offset1:1
	ds_load_2addr_stride64_b64 v[29:32], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v75 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v75 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[112:115], v76 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[143:146], v121, s[56:59], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s63
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[27:28], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[29:30], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[31:32], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[25:28], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[35:36], v[45:46], v[88:95] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[29:32], v77 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[45:46], v[17:24] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v77 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[37:38], v[45:46], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[39:40], v[45:46], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[114:115], v[47:48], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[25:26], v[47:48], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[27:28], v[47:48], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[31:32], v[49:50], v[88:95] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[33:34], v[49:50], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[35:36], v[49:50], v[104:111] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v17
	v_cvt_f32_i32_e32 v30, v18
	v_cvt_f32_i32_e32 v31, v20
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v32, v21
	v_cvt_f32_i32_e32 v33, v22
	v_cvt_f32_i32_e32 v34, v23
	v_cvt_f32_i32_e32 v35, v24
	v_cvt_f32_i32_e32 v122, v89
	v_cvt_f32_i32_e32 v123, v90
	v_cvt_f32_i32_e32 v124, v91
	v_cvt_f32_i32_e32 v125, v92
	v_cvt_f32_i32_e32 v126, v93
	v_cvt_f32_i32_e32 v127, v94
	v_cvt_f32_i32_e32 v128, v95
	v_cvt_f32_i32_e32 v135, v96
	v_cvt_f32_i32_e32 v129, v98
	v_cvt_f32_i32_e32 v130, v99
	v_cvt_f32_i32_e32 v131, v100
	v_cvt_f32_i32_e32 v132, v101
	v_cvt_f32_i32_e32 v133, v102
	v_cvt_f32_i32_e32 v134, v103
	v_cvt_f32_i32_e32 v139, v97
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v137, v105
	v_cvt_f32_i32_e32 v38, v107
	v_cvt_f32_i32_e32 v39, v108
	v_cvt_f32_i32_e32 v40, v110
	v_cvt_f32_i32_e32 v37, v109
	v_cvt_f32_i32_e32 v138, v106
	v_cvt_f32_i32_e32 v89, v111
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[25:28], v170, s[56:59], 0 offen
	buffer_load_b128 v[21:24], v171, s[56:59], 0 offen
	buffer_load_b128 v[17:20], v172, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v140, v140, s[52:55], 0 offen
	buffer_load_u16 v98, v160, s[52:55], 0 offen
	buffer_load_u16 v99, v161, s[52:55], 0 offen
	buffer_load_u16 v100, v162, s[52:55], 0 offen
	buffer_load_u16 v101, v163, s[52:55], 0 offen
	buffer_load_u16 v102, v164, s[52:55], 0 offen
	buffer_load_u16 v103, v86, s[52:55], 0 offen
	buffer_load_u16 v104, v165, s[52:55], 0 offen
	buffer_load_u16 v105, v166, s[52:55], 0 offen
	buffer_load_u16 v106, v167, s[52:55], 0 offen
	buffer_load_u16 v107, v168, s[52:55], 0 offen
	buffer_load_u16 v108, v169, s[52:55], 0 offen
	buffer_load_u16 v109, v117, s[52:55], 0 offen
	buffer_load_u16 v110, v118, s[52:55], 0 offen
	buffer_load_u16 v111, v119, s[52:55], 0 offen
	buffer_load_u16 v112, v120, s[52:55], 0 offen
	buffer_load_u16 v113, v141, s[52:55], 0 offen
	buffer_load_u16 v114, v142, s[52:55], 0 offen
	buffer_load_u16 v115, v147, s[52:55], 0 offen
	buffer_load_u16 v90, v116, s[52:55], 0 offen
	buffer_load_u16 v91, v153, s[52:55], 0 offen
	buffer_load_u16 v92, v154, s[52:55], 0 offen
	buffer_load_u16 v93, v155, s[52:55], 0 offen
	buffer_load_u16 v94, v156, s[52:55], 0 offen
	buffer_load_u16 v95, v157, s[52:55], 0 offen
	buffer_load_u16 v96, v158, s[52:55], 0 offen
	buffer_load_u16 v97, v159, s[52:55], 0 offen
	buffer_load_u16 v116, v148, s[52:55], 0 offen
	buffer_load_u16 v117, v149, s[52:55], 0 offen
	buffer_load_u16 v119, v151, s[52:55], 0 offen
	buffer_load_u16 v120, v152, s[52:55], 0 offen
	buffer_load_u16 v118, v150, s[52:55], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v142, 0, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v141, v85
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v88
	v_dual_mov_b32 v88, v87 :: v_dual_mul_f32 v33, v82, v33
	v_mul_f32_e32 v34, v83, v34
	v_dual_mul_f32 v38, v79, v38 :: v_dual_mul_f32 v89, v84, v89
	v_dual_mul_f32 v40, v84, v40 :: v_dual_mul_f32 v37, v83, v37
	v_dual_mul_f32 v36, v79, v36 :: v_dual_mul_f32 v39, v82, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s6, 0xff800000, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v84, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v86.h
	v_mov_b16_e64 v155.h, v86.h
	v_mov_b16_e64 v147.h, v86.h
	v_mov_b16_e64 v150.h, v86.h
	v_mov_b16_e64 v151.h, v86.h
	v_mov_b16_e64 v148.h, v86.h
	v_mov_b16_e64 v152.h, v86.h
	v_mov_b16_e32 v87.h, v86.h
	v_mov_b16_e64 v153.h, v86.h
	v_mov_b16_e64 v149.h, v86.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v142, v[21:24] offset:4096
	s_waitcnt vmcnt(32)
	ds_store_b128 v142, v[17:20] offset:6144
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v17, v83, v121 :: v_dual_lshlrev_b32 v18, 16, v140
	v_dual_mul_f32 v19, v83, v124 :: v_dual_mul_f32 v20, v84, v125
	v_dual_mul_f32 v23, v83, v128 :: v_dual_mul_f32 v24, v84, v135
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v17, v18
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v142, v[143:146]
	ds_store_b128 v142, v[25:28] offset:2048
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v79, v122 :: v_dual_mul_f32 v18, v82, v123
	v_dual_mul_f32 v26, v79, v129 :: v_dual_mul_f32 v27, v82, v130
	v_dual_mul_f32 v28, v83, v131 :: v_dual_mul_f32 v129, v82, v30
	v_mul_f32_e32 v128, v79, v29
	v_dual_mul_f32 v130, v84, v31 :: v_dual_mul_f32 v131, v79, v32
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v32, 16, v101
	v_lshlrev_b32_e32 v29, 16, v98
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v21, v79, v126 :: v_dual_mul_f32 v22, v82, v127
	v_dual_mul_f32 v25, v82, v139 :: v_dual_mul_f32 v122, v84, v132
	v_dual_mul_f32 v123, v79, v133 :: v_dual_mul_f32 v124, v82, v134
	v_dual_mul_f32 v125, v83, v136 :: v_dual_mul_f32 v126, v84, v137
	v_dual_mul_f32 v127, v83, v138 :: v_dual_lshlrev_b32 v30, 16, v99
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v99, 16, v103
	v_lshlrev_b32_e32 v98, 16, v102
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v101, 16, v105
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v103, 16, v107
	v_lshlrev_b32_e32 v102, 16, v106
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v105, 16, v109
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v107, 16, v111
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v109, 16, v113
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v111, 16, v115
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v93, 16, v93
	v_lshlrev_b32_e32 v92, 16, v92
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v113, 16, v117
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v115, 16, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v120, v20, v32 :: v_dual_mul_f32 v117, v17, v29
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v31, 16, v100
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v101, v24, v101 :: v_dual_lshlrev_b32 v100, 16, v104
	v_dual_mul_f32 v105, v28, v105 :: v_dual_lshlrev_b32 v104, 16, v108
	v_dual_mul_f32 v107, v123, v107 :: v_dual_lshlrev_b32 v106, 16, v110
	v_dual_mul_f32 v109, v125, v109 :: v_dual_lshlrev_b32 v108, 16, v112
	v_dual_mul_f32 v111, v127, v111 :: v_dual_lshlrev_b32 v110, 16, v114
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v39, v113 :: v_dual_lshlrev_b32 v112, 16, v116
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v116, 16, v118
	v_lshlrev_b32_e32 v114, 16, v119
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v118, v18, v30 :: v_dual_mul_f32 v119, v19, v31
	v_dual_mul_f32 v99, v22, v99 :: v_dual_mul_f32 v98, v21, v98
	v_dual_mul_f32 v100, v23, v100 :: v_dual_mul_f32 v103, v26, v103
	v_mul_f32_e32 v102, v25, v102
	v_dual_mul_f32 v91, v129, v91 :: v_dual_mul_f32 v90, v128, v90
	v_dual_mul_f32 v93, v131, v93 :: v_dual_mul_f32 v92, v130, v92
	v_mul_f32_e32 v35, v35, v96
	v_dual_mul_f32 v33, v33, v94 :: v_dual_mul_f32 v104, v27, v104
	v_mul_f32_e32 v106, v122, v106
	v_mul_f32_e32 v108, v124, v108
	v_mul_f32_e32 v110, v126, v110
	v_mul_f32_e32 v36, v36, v97
	v_mul_f32_e32 v34, v34, v95
	v_mul_f32_e32 v38, v38, v112
	v_dual_mul_f32 v37, v37, v116 :: v_dual_mul_f32 v40, v40, v114
	v_mul_f32_e32 v89, v89, v115
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v120, s2
	v_cndmask_b32_e64 v96, 0xff800000, v119, s2
	v_cndmask_b32_e64 v97, 0xff800000, v118, s2
	v_cndmask_b32_e64 v112, 0xff800000, v117, s2
	v_cndmask_b32_e64 v101, 0xff800000, v101, s2
	v_cndmask_b32_e64 v100, 0xff800000, v100, s2
	v_cndmask_b32_e64 v99, 0xff800000, v99, s2
	v_cndmask_b32_e64 v98, 0xff800000, v98, s2
	v_cndmask_b32_e64 v102, 0xff800000, v102, s2
	v_cndmask_b32_e64 v92, 0xff800000, v92, s2
	v_cndmask_b32_e64 v91, 0xff800000, v91, s2
	v_cndmask_b32_e64 v90, 0xff800000, v90, s2
	v_cndmask_b32_e64 v33, 0xff800000, v33, s2
	v_cndmask_b32_e64 v93, 0xff800000, v93, s2
	v_cndmask_b32_e64 v94, 0xff800000, v85, s2
	v_cndmask_b32_e64 v106, 0xff800000, v106, s2
	v_cndmask_b32_e64 v105, 0xff800000, v105, s2
	v_cndmask_b32_e64 v104, 0xff800000, v104, s2
	v_cndmask_b32_e64 v103, 0xff800000, v103, s2
	v_cndmask_b32_e64 v110, 0xff800000, v110, s2
	v_cndmask_b32_e64 v109, 0xff800000, v109, s2
	v_cndmask_b32_e64 v108, 0xff800000, v108, s2
	v_cndmask_b32_e64 v107, 0xff800000, v107, s2
	v_cndmask_b32_e64 v111, 0xff800000, v111, s2
	v_cndmask_b32_e64 v35, 0xff800000, v35, s2
	v_cndmask_b32_e64 v34, 0xff800000, v34, s2
	v_cndmask_b32_e64 v36, 0xff800000, v36, s2
	v_cndmask_b32_e64 v40, 0xff800000, v40, s2
	v_cndmask_b32_e64 v39, 0xff800000, v39, s2
	v_cndmask_b32_e64 v38, 0xff800000, v38, s2
	v_cndmask_b32_e64 v89, 0xff800000, v89, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v112, v97, v96
	v_max3_f32 v113, v95, v98, v99
	v_max3_f32 v114, v100, v101, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v118, v90, v91 :: v_dual_max_f32 v123, v40, v89
	v_max3_f32 v119, v92, v93, v33
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v115, v103, v104, v105
	v_max3_f32 v116, v106, v107, v108
	v_max3_f32 v117, v109, v110, v111
	v_max3_f32 v120, v34, v35, v36
	v_max_f32_e32 v122, v38, v39
	v_max3_f32 v85, v85, v113, v114
	v_max3_f32 v113, v118, v94, v119
	v_max3_f32 v114, v115, v116, v117
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.h, v86.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v115, v122, v37, v123
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.h, v86.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v113, v120, v85
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v86.h
	v_mov_b16_e64 v143.h, v86.h
	v_mov_b16_e32 v121.h, v86.h
	v_mov_b16_e64 v145.h, v86.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v85, v114, v115
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v17, v61
	ds_load_u16_d16 v18, v61 offset:256
	ds_load_u16_d16 v19, v61 offset:512
	ds_load_u16_d16 v20, v61 offset:768
	ds_load_u16_d16 v21, v61 offset:1024
	ds_load_u16_d16 v22, v61 offset:1280
	ds_load_u16_d16 v23, v61 offset:1536
	ds_load_u16_d16 v24, v61 offset:1792
	ds_load_u16_d16 v25, v61 offset:2048
	ds_load_u16_d16 v26, v61 offset:2304
	ds_load_u16_d16 v27, v61 offset:2560
	ds_load_u16_d16 v28, v61 offset:2816
	ds_load_u16_d16 v29, v61 offset:3072
	ds_load_u16_d16 v30, v61 offset:3328
	ds_load_u16_d16 v31, v61 offset:3584
	ds_load_u16_d16 v32, v61 offset:3840
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v113, v85, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v85, v141, v85, v113
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v91, v85
	v_sub_f32_e32 v101, v101, v85
	v_sub_f32_e32 v95, v95, v85
	v_sub_f32_e32 v104, v104, v85
	v_sub_f32_e32 v107, v107, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v116, v101
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v107, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v85
	v_sub_f32_e32 v100, v100, v85
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v91, s2
	v_cndmask_b32_e64 v131, 0, v116, s2
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v113, v141, v85
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v95, s2
	v_cndmask_b32_e64 v95, 0, v104, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.l, v120.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v131.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v111, v85
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v111, v113
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v90, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v103
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v137, 1, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v90, v90
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v107, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v100
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v152.l, v129.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v111, 0, v111, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v118, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v89, v89, v85 :: v_dual_mul_f32 v2, v2, v111
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v111
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v116, v132, v95 :: v_dual_sub_f32 v105, v105, v85
.Ltmp14:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v90, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v114, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v155.l, v132.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v123.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v96, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v112, s2
	v_cndmask_b32_e64 v91, 0, v38, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v97, v97, v85 :: v_dual_and_b32 v138, 1, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v122, v107, v91
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v119, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v109, v85
	v_dual_sub_f32 v110, v110, v85 :: v_dual_and_b32 v135, 1, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v99
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v96, s2
	v_cndmask_b32_e64 v128, 0, v97, s2
	v_cndmask_b32_e64 v89, 0, v37, s2
	v_cndmask_b32_e64 v127, 0, v36, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v33, v33, v85 :: v_dual_add_f32 v38, v128, v99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v128.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v127, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v85
	v_dual_sub_f32 v39, v39, v85 :: v_dual_and_b32 v134, 1, v151
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v113, s2
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v127.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v108, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v92, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v85
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v133, 1, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v33, v33
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v40, v40, v85 :: v_dual_mul_f32 v3, v3, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v85
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v35, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v115, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v87.l, v105.h
	v_mov_b16_e64 v153.l, v130.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v93, s2
	v_cndmask_b32_e64 v93, 0, v108, s2
	v_cndmask_b32_e64 v108, 0, v39, s2
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v129, v98 :: v_dual_sub_f32 v102, v102, v85
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v125.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v106, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v110, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v33, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v94, v94, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v123, v120 :: v_dual_add_f32 v118, v104, v93
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v87, 1, v87
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v125, v102
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v34, s2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v96, 0, v117, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v111
	v_mul_f32_e32 v7, v7, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v123, v123
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v126, v101
	v_add_f32_e32 v114, v131, v96
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.l, v126.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v94, s2
	v_cndmask_b32_e64 v94, 0, v106, s2
	v_cndmask_b32_e64 v106, 0, v109, s2
	v_cndmask_b32_e64 v109, 0, v40, s2
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v130, v97
	v_add_f32_e32 v34, v124, v103
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.l, v124.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v105, v94
	v_add_f32_e32 v119, v106, v92
	v_add_f32_e32 v112, v35, v36
	v_dual_add_f32 v110, v33, v34 :: v_dual_add_f32 v33, v108, v89
	v_add_f32_e32 v34, v109, v90
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v146
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v115, v39, v40 :: v_dual_and_b32 v36, 1, v86
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.l, v103.h
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v116, v114, v116 :: v_dual_and_b32 v37, 1, v147
	v_add_f32_e32 v117, v117, v118
	v_add_f32_e32 v118, v119, v122
	v_add_f32_e32 v122, v33, v34
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v119, v123, v35, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v8, v8, v111 :: v_dual_and_b32 v123, 1, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v105, v105
	v_mov_b16_e64 v142.l, v104.h
	v_add3_u32 v87, v105, v87, 0x7fff
	v_and_b32_e32 v105, 1, v86
	v_mov_b16_e32 v86.l, v102.h
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v110, v112
	v_add_f32_e32 v112, v113, v115
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v153
	v_cmp_o_f32_e64 s2, v124, v124
	v_add3_u32 v114, v124, v37, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v115, v118, v122 :: v_dual_and_b32 v124, 1, v149
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v139, v125, v123, 0x7fff
	v_cmp_o_f32_e64 s21, v103, v103
	v_mov_b16_e64 v144.l, v107.h
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v116, v117
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v103, v103, v105, 0x7fff
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v110, v112
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v123, v130, v136, 0x7fff
	v_and_b32_e32 v136, 1, v142
	v_cmp_o_f32_e64 s4, v120, v120
	v_add3_u32 v120, v120, v36, 0x7fff
	v_cmp_o_f32_e64 s10, v125, v125
	v_add3_u32 v125, v132, v138, 0x7fff
	v_mov_b16_e64 v143.l, v106.h
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v113, v115
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v138, 1, v144
	v_add3_u32 v140, v126, v124, 0x7fff
	v_add3_u32 v124, v131, v137, 0x7fff
	v_cmp_o_f32_e64 s25, v104, v104
	v_cmp_o_f32_e64 s30, v107, v107
	v_mov_b16_e32 v121.l, v109.h
	v_and_b32_e32 v137, 1, v143
	v_add3_u32 v104, v104, v136, 0x7fff
	v_cndmask_b16 v116.h, 0x7fff, v120.h, s4
	v_cndmask_b16 v116.l, 0x7fff, v119.h, s5
	v_and_b32_e32 v117, 1, v86
	v_mov_b16_e32 v86.l, v101.h
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v105, v110
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v107, v107, v138, 0x7fff
	v_cmp_o_f32_e64 s22, v102, v102
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v111 :: v_dual_and_b32 v121, 1, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v106, v106
	v_add3_u32 v106, v106, v137, 0x7fff
	v_cndmask_b16 v120.l, 0x7fff, v104.h, s25
	v_cndmask_b16 v122.l, 0x7fff, v107.h, s30
	v_and_b32_e32 v104, 1, v86
	v_permlanex16_b32 v107, v116, s68, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v102, v102, v117, 0x7fff
	v_mov_b16_e32 v86.l, v100.h
	v_cmp_o_f32_e64 s23, v101, v101
	v_mov_b16_e64 v145.l, v108.h
	v_cmp_o_f32_e64 s33, v109, v109
	v_add3_u32 v109, v109, v121, 0x7fff
	v_cndmask_b16 v119.l, 0x7fff, v87.h, s24
	v_cndmask_b16 v121.l, 0x7fff, v106.h, s26
	v_cndmask_b16 v87.h, 0x7fff, v103.h, s21
	v_add3_u32 v103, v101, v104, 0x7fff
	v_perm_b32 v101, v107, v116, v80
	v_cndmask_b16 v106.h, 0x7fff, v102.h, s22
	v_perm_b32 v102, v107, v116, v81
	v_and_b32_e32 v107, 1, v86
	v_mov_b16_e32 v86.l, v99.h
	v_cmp_o_f32_e64 s27, v100, v100
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v33, v61 offset:4096
	ds_load_u16_d16 v34, v61 offset:4352
	ds_load_u16_d16 v35, v61 offset:4608
	ds_load_u16_d16 v36, v61 offset:4864
	ds_load_u16_d16 v37, v61 offset:5120
	ds_load_u16_d16 v38, v61 offset:5376
	ds_load_u16_d16 v39, v61 offset:5632
	ds_load_u16_d16 v40, v61 offset:5888
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v126, v126
	v_add3_u32 v100, v100, v107, 0x7fff
	v_and_b32_e32 v107, 1, v86
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v110, v105, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v145
	v_cmp_o_f32_e64 s31, v108, v108
	v_cndmask_b16 v87.l, 0x7fff, v114.h, s2
	v_cndmask_b16 v106.l, 0x7fff, v139.h, s10
	v_mov_b16_e32 v86.l, v98.h
	v_add3_u32 v108, v108, v142, 0x7fff
	v_cndmask_b16 v108.l, 0x7fff, v140.h, s11
	v_permlanex16_b32 v104, v87, s68, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s28, v99, v99
	v_cndmask_b16 v124.l, 0x7fff, v109.h, s33
	v_cndmask_b16 v123.l, 0x7fff, v108.h, s31
	v_cndmask_b16 v108.h, 0x7fff, v103.h, s23
	v_perm_b32 v103, v104, v87, v80
	v_permlanex16_b32 v116, v106, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v104, v104, v87, v81
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v105, v110
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v110, v108, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v109.h, 0x7fff, v100.h, s27
	v_and_b32_e32 v100, 1, v86
	v_add3_u32 v99, v99, v107, 0x7fff
	v_mov_b16_e32 v86.l, v97.h
	v_perm_b32 v105, v116, v106, v80
	v_perm_b32 v106, v116, v106, v81
	v_perm_b32 v107, v110, v108, v80
	v_perm_b32 v108, v110, v108, v81
	v_cndmask_b16 v114.h, 0x7fff, v99.h, s28
	v_and_b32_e32 v99, 1, v86
	v_mov_b16_e32 v86.l, v96.h
	v_cmp_o_f32_e64 s12, v127, v127
	v_cmp_o_f32_e64 s13, v128, v128
	v_cmp_o_f32_e64 s14, v129, v129
	v_cmp_o_f32_e64 s7, v130, v130
	v_cmp_o_f32_e64 s8, v131, v131
	v_cmp_o_f32_e64 s9, v132, v132
	v_add3_u32 v141, v127, v133, 0x7fff
	v_add3_u32 v134, v128, v134, 0x7fff
	v_add3_u32 v135, v129, v135, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v126, v61 offset:6144
	ds_load_u16_d16 v127, v61 offset:6400
	ds_load_u16_d16 v128, v61 offset:6656
	ds_load_u16_d16 v129, v61 offset:6912
	ds_load_u16_d16 v130, v61 offset:7168
	ds_load_u16_d16 v131, v61 offset:7424
	ds_load_u16_d16 v132, v61 offset:7680
	ds_load_u16_d16 v133, v61 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v61 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v61 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v61 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v61 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v61 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v61 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v61 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v61 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v61 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v61 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v61 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v61 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v61 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v61 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v61 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v61 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v33, v61 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v34, v61 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v35, v61 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v36, v61 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v37, v61 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v38, v61 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v39, v61 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v40, v61 offset:6016
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v98, v98
	v_cmp_o_f32_e64 s17, v97, v97
	v_add3_u32 v98, v98, v100, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[101:108], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v97, v99, 0x7fff
	v_and_b32_e32 v22, 1, v86
	v_mov_b16_e32 v86.l, v95.h
	v_cmp_o_f32_e64 s6, v96, v96
	v_cndmask_b16 v109.l, 0x7fff, v141.h, s12
	v_cndmask_b16 v114.l, 0x7fff, v134.h, s13
	v_cndmask_b16 v118.l, 0x7fff, v135.h, s14
	v_cndmask_b16 v112.l, 0x7fff, v123.h, s7
	v_cndmask_b16 v118.h, 0x7fff, v98.h, s29
	v_add3_u32 v24, v96, v22, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v21.h, s17
	v_and_b32_e32 v96, 1, v86
	v_mov_b16_e32 v86.l, v94.h
	v_cmp_o_f32_e64 s34, v95, v95
	v_permlanex16_b32 v110, v109, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v114, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v118, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v97, v112, s68, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v95, v95, v96, 0x7fff
	v_and_b32_e32 v96, 1, v86
	v_mov_b16_e32 v86.l, v93.h
	v_perm_b32 v17, v110, v109, v80
	v_perm_b32 v18, v110, v109, v81
	v_perm_b32 v19, v20, v114, v80
	v_perm_b32 v20, v20, v114, v81
	v_perm_b32 v21, v23, v118, v80
	v_perm_b32 v22, v23, v118, v81
	v_cndmask_b16 v113.h, 0x7fff, v24.h, s6
	v_perm_b32 v23, v97, v112, v80
	v_perm_b32 v24, v97, v112, v81
	v_cndmask_b16 v115.h, 0x7fff, v95.h, s34
	v_and_b32_e32 v95, 1, v86
	v_mov_b16_e32 v86.l, v92.h
	v_cmp_o_f32_e64 s35, v94, v94
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[17:24], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v93, v93
	v_cmp_o_f32_e64 s19, v92, v92
	v_and_b32_e32 v22, 1, v86
	v_mov_b16_e32 v86.l, v91.h
	v_add3_u32 v94, v94, v96, 0x7fff
	v_add3_u32 v21, v93, v95, 0x7fff
	v_cmp_o_f32_e64 s18, v91, v91
	v_add3_u32 v25, v92, v22, 0x7fff
	v_and_b32_e32 v24, 1, v86
	v_mov_b16_e32 v86.l, v89.h
	v_cndmask_b16 v113.l, 0x7fff, v124.h, s8
	v_cndmask_b16 v115.l, 0x7fff, v125.h, s9
	v_cndmask_b16 v119.h, 0x7fff, v94.h, s35
	v_cndmask_b16 v120.h, 0x7fff, v21.h, s20
	v_and_b32_e32 v27, 1, v86
	v_mov_b16_e32 v86.l, v90.h
	v_cndmask_b16 v121.h, 0x7fff, v25.h, s19
	v_add3_u32 v25, v91, v24, 0x7fff
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v126, v61 offset:6272
	ds_load_u16_d16_hi v127, v61 offset:6528
	ds_load_u16_d16_hi v128, v61 offset:6784
	ds_load_u16_d16_hi v129, v61 offset:7040
	ds_load_u16_d16_hi v130, v61 offset:7296
	ds_load_u16_d16_hi v131, v61 offset:7552
	ds_load_u16_d16_hi v132, v61 offset:7808
	ds_load_u16_d16_hi v133, v61 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v89, v89
	v_and_b32_e32 v28, 1, v86
	v_cmp_o_f32_e64 s15, v90, v90
	v_permlanex16_b32 v97, v113, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v115, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v119, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v120, s68, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v27, v89, v27, 0x7fff
	v_cndmask_b16 v122.h, 0x7fff, v25.h, s18
	v_add3_u32 v25, v90, v28, 0x7fff
	v_perm_b32 v17, v97, v113, v80
	v_perm_b32 v18, v97, v113, v81
	v_perm_b32 v19, v20, v115, v80
	v_perm_b32 v20, v20, v115, v81
	v_perm_b32 v21, v23, v119, v80
	v_perm_b32 v22, v23, v119, v81
	v_perm_b32 v23, v26, v120, v80
	v_perm_b32 v24, v26, v120, v81
	v_cndmask_b16 v123.h, 0x7fff, v27.h, s16
	v_cndmask_b16 v124.h, 0x7fff, v25.h, s15
	v_permlanex16_b32 v26, v121, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v87, v88, v111
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[17:24], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v20, v122, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v123, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v124, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v26, v121, v80
	v_perm_b32 v18, v26, v121, v81
	v_perm_b32 v19, v20, v122, v80
	v_perm_b32 v20, v20, v122, v81
	v_perm_b32 v21, v22, v123, v80
	v_perm_b32 v22, v22, v123, v81
	v_perm_b32 v23, v24, v124, v80
	v_perm_b32 v24, v24, v124, v81
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[17:24], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v85, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v87, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s61, s61, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s47, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s60, s61
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v85 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v87, vcc_lo
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp54:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp60:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp69:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp70:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp72:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp73:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp78:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp102:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp120:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp122:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp124:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp126:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v51
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v52
.Ltmp128:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v52
	v_lshlrev_b32_e32 v2, 5, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp130:
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
	v_cmp_gt_i32_e32 vcc_lo, s47, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp131:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 173
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 173
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8220
; TotalNumSgprs: 71
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 173
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
