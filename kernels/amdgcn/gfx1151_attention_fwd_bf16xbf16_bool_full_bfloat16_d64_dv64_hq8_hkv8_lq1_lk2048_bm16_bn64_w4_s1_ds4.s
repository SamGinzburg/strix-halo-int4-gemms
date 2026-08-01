	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s70, s[0:1], 0x60
	s_load_b64 s[58:59], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v3, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v80, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v77, 1, v0
	v_lshlrev_b32_e32 v82, 4, v0
	v_and_b32_e32 v81, 15, v0
	v_lshlrev_b32_e32 v79, 2, v0
	v_lshlrev_b32_e32 v78, 5, v0
	v_and_b32_e32 v8, 0x70, v77
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v8, v82, v8
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s70
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s70
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v83, 0, v8
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v1, 3, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[73:74], null, s58, v80, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s58, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
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
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s61, s61, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s70
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v80
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s4, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s47, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, s4, v73, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s45, 1, v2
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s45
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s70, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s70
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[4:7], v4, s[60:63], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s47, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s71, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s71, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s71, s72
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[4:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[68:69], s[0:1], 0x30
	v_dual_mov_b32 v48, 0x5410 :: v_dual_lshlrev_b32 v3, 4, v3
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s59, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 29
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v3, v81, 7, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v85, 0x800, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v4, 16, v3
	v_xor_b32_e32 v5, 32, v3
	v_xor_b32_e32 v6, 48, v3
	v_xor_b32_e32 v7, 64, v3
	v_xor_b32_e32 v8, 0x50, v3
	v_xor_b32_e32 v9, 0x60, v3
	v_xor_b32_e32 v10, 0x70, v3
	v_add_nc_u32_e32 v93, 0, v3
	v_and_b32_e32 v3, 0x60, v0
	v_dual_mov_b32 v113, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, v2, s11
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	v_lshrrev_b32_e32 v4, 3, v3
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s10, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s9, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v88, 0, v8
	s_add_i32 s2, s2, s1
	v_xor_b32_e32 v94, v79, v4
	v_add3_u32 v96, s2, v1, v2
	v_mov_b32_e32 v116, 0xff800000
	v_bfe_i32 v8, v0, 2, 1
	v_bfe_i32 v47, v0, 5, 1
	v_xor_b32_e32 v2, 0x210, v94
	v_and_b32_e32 v46, 4, v0
	v_and_b32_e32 v51, 0x80, v77
	v_dual_mov_b32 v49, 0x7632 :: v_dual_add_nc_u32 v86, 0, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[74:75], null, s59, v80, v[1:2]
	v_mov_b32_e32 v1, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v91, 0, v5
	v_and_b32_e32 v5, 28, v0
	v_lshlrev_b32_e32 v4, 3, v0
	v_add_nc_u32_e32 v89, 0, v7
	v_bfe_i32 v7, v0, 0, 1
	v_and_b32_e32 v8, 0x840, v8
	v_and_or_b32 v95, 0x3e0, v78, v5
	v_and_b32_e32 v4, 16, v4
	v_and_b32_e32 v47, 0x840, v47
	v_and_b32_e32 v7, 0x420, v7
	v_dual_mov_b32 v115, 0xff800000 :: v_dual_add_nc_u32 v90, 0, v6
	v_xor_b32_e32 v5, 4, v95
	v_xor_b32_e32 v6, 8, v95
	v_add_nc_u32_e32 v87, 0, v9
	v_add_nc_u32_e32 v101, 0, v2
	v_mov_b32_e32 v2, v1
	v_add_nc_u32_e32 v102, 0, v5
	v_mov_b32_e32 v5, v1
	v_and_or_b32 v4, 0x180, v82, v4
	v_add_nc_u32_e32 v103, 0, v6
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v41, 12, v95
	v_xor_b32_e32 v42, 16, v95
	v_or3_b32 v97, v4, v7, v8
	v_and_b32_e32 v4, 16, v0
	v_bfe_i32 v8, v0, 3, 1
	v_and_b32_e32 v7, 0x60, v78
	v_xor_b32_e32 v43, 20, v95
	v_xor_b32_e32 v44, 24, v95
	v_cmp_eq_u32_e64 s1, 0, v4
	v_and_b32_e32 v8, 0x420, v8
	v_xor_b32_e32 v45, 28, v95
	v_xor_b32_e32 v50, 32, v97
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v84, 0x800, v80
	v_cndmask_b32_e64 v48, 0x1054, v48, s1
	v_xor3_b32 v7, v8, v7, v47
	v_lshl_add_u32 v8, v46, 7, 0
	v_cndmask_b32_e64 v49, 0x3276, v49, s1
	v_add_nc_u32_e32 v104, 0, v41
	v_lshl_or_b32 v46, v48, 8, v48
	v_xor_b32_e32 v48, 64, v97
	v_add3_u32 v7, v8, v51, v7
	v_lshl_or_b32 v47, v49, 8, v49
	v_xor_b32_e32 v49, 0x60, v97
	v_and_b32_e32 v8, 0x540054, v46
	v_add_nc_u32_e32 v105, 0, v42
	v_add_nc_u32_e32 v112, v7, v4
	v_mov_b32_e32 v4, v1
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[13:16], v86
	ds_load_b128 v[9:12], v87
	ds_load_b128 v[21:24], v88
	ds_load_b128 v[17:20], v89
	v_lshl_or_b32 v8, v8, 4, v8
	v_and_b32_e32 v46, 0x760076, v47
	v_lshlrev_b32_e32 v47, 1, v81
	v_add_nc_u32_e32 v106, 0, v43
	v_add_nc_u32_e32 v107, 0, v44
	v_and_b32_e32 v98, 0x5040504, v8
	v_mov_b32_e32 v8, v1
	ds_load_b128 v[29:32], v90
	ds_load_b128 v[25:28], v91
	ds_load_b128 v[37:40], v92
	ds_load_b128 v[33:36], v93
	v_lshl_or_b32 v46, v46, 4, v46
	v_add_nc_u32_e32 v108, 0, v45
	v_add_nc_u32_e32 v109, 0, v50
	v_add_nc_u32_e32 v110, 0, v48
	v_add_nc_u32_e32 v111, 0, v49
	v_and_b32_e32 v99, 0x7060706, v46
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v114, v1
	v_add3_u32 v100, 0, v47, v3
	v_mov_b32_e32 v3, v1
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s74, s8, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s58, 4
	s_lshl_b32 s76, s58, 5
	s_mul_i32 s77, s58, 48
	s_lshl_b32 s78, s59, 4
	s_lshl_b32 s79, s59, 5
	s_mul_i32 s80, s59, 48
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s64, s6
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v117, 8, v76
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v118, s74, v57 :: v_dual_mul_f32 v119, s74, v58
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v57, 8, v75
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v120, s74, v49 :: v_dual_mul_f32 v121, s74, v50
	v_mul_f32_e32 v122, s74, v51
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v49.l, 0xff, v75.l
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v49.h, 0xff, v57.l
	v_and_b16 v50.l, 0xff, v75.h
	v_lshrrev_b32_e32 v57, 24, v75
	v_and_b16 v51.l, 0xff, v117.l
	v_and_b16 v51.h, 0xff, v76.h
	v_lshrrev_b32_e32 v58, 24, v76
	v_and_b16 v50.h, 0xff, v76.l
	v_cmp_ne_u16_e64 s2, 0, v49.l
	v_cmp_ne_u16_e64 s4, 0, v49.h
	v_cmp_ne_u16_e64 s5, 0, v50.l
	v_cmp_ne_u16_e64 s6, 0, v57.l
	v_cmp_ne_u16_e64 s8, 0, v51.l
	v_cmp_ne_u16_e64 s9, 0, v51.h
	v_cmp_ne_u16_e64 s10, 0, v58.l
	v_cmp_ne_u16_e64 s7, 0, v50.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s17, s11, s2
	s_and_b32 s18, s11, s4
	s_and_b32 s21, s11, s9
	s_and_b32 s23, s11, s5
	s_and_b32 s24, s11, s6
	s_and_b32 s25, s11, s10
	s_and_b32 s29, s11, s8
	v_cndmask_b32_e64 v75, 0, 1, s17
	v_cndmask_b32_e64 v76, 0, 1, s18
	v_cndmask_b32_e64 v49, 0, 1, s21
	v_cndmask_b32_e64 v50, 0, 1, s23
	v_cndmask_b32_e64 v58, 0, 1, s24
	v_cndmask_b32_e64 v51, 0, 1, s25
	v_cndmask_b32_e64 v117, 0, 1, s29
	s_and_b32 s26, s11, s7
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v57, 0, 1, s26
	v_lshlrev_b16 v49.h, 8, v50.l
	v_mov_b16_e32 v50.l, v75.l
	v_lshlrev_b16 v50.h, 8, v51.l
	v_mov_b16_e32 v51.l, v117.l
	v_lshlrev_b16 v51.h, 8, v58.l
	v_mov_b16_e32 v58.l, v76.l
	v_or_b16 v57.h, v57.l, v49.l
	v_or_b16 v57.l, v50.l, v49.h
	v_add_nc_u32_e32 v49, 0, v94
	v_or_b16 v50.h, v51.l, v50.h
	v_or_b16 v50.l, v58.l, v51.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v76, s74, v53 :: v_dual_add_nc_u32 v51, 0, v95
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v49, v57
	ds_store_b32 v101, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v49, v51
	ds_load_b32 v50, v102
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v127, s74, v43 :: v_dual_mul_f32 v132, s74, v48
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v43, v103
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v129, s74, v45
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v45, v104
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s74, v52 :: v_dual_mul_f32 v126, s74, v42
	v_dual_mul_f32 v125, s74, v41 :: v_dual_mul_f32 v130, s74, v46
	v_mul_f32_e32 v131, s74, v47
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_b32 v46, v105
	ds_load_b32 v47, v106
	ds_load_b32 v51, v107
	ds_load_b32 v52, v108
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v123, s74, v55 :: v_dual_mul_f32 v128, s74, v44
	v_dual_mul_f32 v117, s74, v54 :: v_dual_mul_f32 v124, s74, v56
	v_dual_mul_f32 v65, s74, v65 :: v_dual_mul_f32 v66, s74, v66
	v_dual_mul_f32 v67, s74, v67 :: v_dual_mul_f32 v68, s74, v68
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(6)
	v_lshrrev_b16 v41.h, 8, v50.l
	v_lshrrev_b16 v41.l, 8, v49.l
	v_and_b32_e32 v54, 0x1000000, v49
	v_and_b32_e32 v55, 0x10000, v49
	v_and_b32_e32 v49, 1, v49
	v_and_b16 v44.l, 1, v41.h
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b16 v41.h, 8, v43.l
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v42.l, 8, v45.l
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u32_e64 s43, 1, v49
	v_and_b32_e32 v133, 0x1000000, v50
	v_and_b16 v48.l, 1, v41.h
	v_and_b16 v53.l, 1, v42.l
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v41.h, 8, v46.l
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v42.l, 8, v47.l
	v_cmp_eq_u16_e64 s44, 1, v41.l
	v_and_b32_e32 v134, 0x10000, v50
	v_and_b32_e32 v50, 1, v50
	v_and_b16 v56.l, 1, v41.h
	v_and_b16 v57.l, 1, v42.l
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v41.h, 8, v51.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v42.l, 8, v52.l
	v_and_b32_e32 v143, 1, v46
	v_and_b32_e32 v144, 0x1000000, v47
	v_and_b32_e32 v145, 0x10000, v47
	v_and_b32_e32 v147, 0x1000000, v51
	v_and_b16 v57.h, 1, v41.h
	v_and_b32_e32 v150, 0x1000000, v52
	v_and_b32_e32 v151, 0x10000, v52
	v_and_b16 v58.l, 1, v42.l
	v_and_b32_e32 v152, 1, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v65, s43
	v_cndmask_b32_e64 v42, 0xff800000, v66, s44
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v139, 0x10000, v45
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v69, s74, v69 :: v_dual_mul_f32 v70, s74, v70
	v_dual_mul_f32 v61, s74, v61 :: v_dual_mul_f32 v62, s74, v62
	v_dual_mul_f32 v63, s74, v63 :: v_dual_mul_f32 v64, s74, v64
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s42, 0, v54
	v_cmp_eq_u32_e64 s39, 1, v50
	v_cmp_eq_u16_e64 s31, 1, v53.l
	v_cmp_ne_u32_e64 s27, 0, v139
	v_cmp_eq_u32_e64 s20, 1, v143
	v_cmp_eq_u16_e64 s22, 1, v56.l
	v_cmp_ne_u32_e64 s12, 0, v145
	v_cmp_ne_u32_e64 s13, 0, v144
	v_cmp_ne_u32_e64 s9, 0, v147
	v_cmp_eq_u32_e64 s6, 1, v152
	v_cmp_ne_u32_e64 s5, 0, v151
	v_cmp_ne_u32_e64 s4, 0, v150
	v_and_b32_e32 v138, 0x1000000, v45
	v_and_b32_e32 v140, 1, v45
	v_cmp_ne_u32_e64 s41, 0, v55
	v_cmp_eq_u16_e64 s40, 1, v44.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v68, s42
	v_cndmask_b32_e64 v45, 0xff800000, v69, s39
	v_cndmask_b32_e64 v54, 0xff800000, v62, s31
	v_cndmask_b32_e64 v55, 0xff800000, v63, s27
	v_cndmask_b32_e64 v62, 0xff800000, v120, s20
	v_cndmask_b32_e64 v63, 0xff800000, v121, s22
	v_cndmask_b32_e64 v68, 0xff800000, v123, s12
	v_cndmask_b32_e64 v69, 0xff800000, v124, s13
	v_cndmask_b32_e64 v120, 0xff800000, v128, s9
	v_cndmask_b32_e64 v121, 0xff800000, v129, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v142, 0x10000, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v131, s5
	v_cndmask_b32_e64 v124, 0xff800000, v132, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v141, 0x1000000, v46
	v_and_b32_e32 v146, 1, v47
	v_and_b32_e32 v135, 0x1000000, v43
	v_and_b32_e32 v136, 0x10000, v43
	v_and_b32_e32 v137, 1, v43
	v_and_b32_e32 v148, 0x10000, v51
	v_and_b32_e32 v149, 1, v51
	v_cmp_ne_u32_e64 s37, 0, v134
	v_cmp_ne_u32_e64 s38, 0, v133
	v_cmp_ne_u32_e64 s28, 0, v138
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v133, v120, v121
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s16, 0, v142
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v134, v123, v124
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s19, 0, v141
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v71, s74, v71 :: v_dual_mul_f32 v72, s74, v72
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s15, 1, v146
	v_cmp_eq_u16_e64 s14, 1, v57.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v59, s74, v59 :: v_dual_mul_f32 v60, s74, v60
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 1, v137
	v_cmp_eq_u16_e64 s36, 1, v48.l
	v_cmp_ne_u32_e64 s33, 0, v136
	v_cmp_ne_u32_e64 s34, 0, v135
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v67, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 1, v140
	v_cmp_eq_u32_e64 s10, 1, v149
	v_cmp_eq_u16_e64 s11, 1, v57.h
	v_cmp_ne_u32_e64 s8, 0, v148
	v_cmp_eq_u16_e64 s7, 1, v58.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v57, 0, v97
	v_cndmask_b32_e64 v56, 0xff800000, v64, s28
	v_cndmask_b32_e64 v64, 0xff800000, v122, s16
	v_cndmask_b32_e64 v65, 0xff800000, v75, s19
	v_cndmask_b32_e64 v46, 0xff800000, v70, s40
	v_cndmask_b32_e64 v47, 0xff800000, v71, s37
	v_cndmask_b32_e64 v48, 0xff800000, v72, s38
	v_cndmask_b32_e64 v66, 0xff800000, v76, s15
	v_cndmask_b32_e64 v67, 0xff800000, v117, s14
	v_cndmask_b32_e64 v49, 0xff800000, v118, s35
	v_cndmask_b32_e64 v50, 0xff800000, v119, s36
	v_cndmask_b32_e64 v51, 0xff800000, v59, s33
	v_cndmask_b32_e64 v52, 0xff800000, v60, s34
	v_cndmask_b32_e64 v53, 0xff800000, v61, s30
	v_cndmask_b32_e64 v117, 0xff800000, v125, s10
	v_cndmask_b32_e64 v118, 0xff800000, v126, s11
	v_cndmask_b32_e64 v119, 0xff800000, v127, s8
	v_cndmask_b32_e64 v122, 0xff800000, v130, s7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[41:44]
	ds_store_b128 v57, v[62:65] offset:512
	ds_store_b128 v109, v[45:48]
	ds_store_b128 v109, v[66:69] offset:512
	ds_store_b128 v110, v[49:52]
	ds_store_b128 v110, v[117:120] offset:512
	ds_store_b128 v111, v[53:56]
	ds_store_b128 v111, v[121:124] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[125:128], v112 offset:256
	ds_load_b128 v[129:132], v112
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v61, v50, v51, v52
	v_max3_f32 v70, v53, v54, v55
	v_max3_f32 v71, v56, v62, v63
	v_max3_f32 v72, v64, v65, v66
	v_max3_f32 v75, v67, v68, v69
	v_max3_f32 v76, v117, v118, v119
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v115
	v_cmp_neq_f32_e64 s46, 0xff800000, v116
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s71, s71, 64
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s71, s72
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v57, v128, v128
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v58, v132, v132
	v_max3_f32 v59, v129, v125, v130
	v_max3_f32 v60, v126, v131, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v58, v57
	v_max3_f32 v57, v59, v60, v57
	v_max3_f32 v59, v44, v45, v46
	v_max3_f32 v60, v47, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v57
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v57
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
	v_max_f32_e32 v58, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v43, v59
	v_max3_f32 v59, v61, v70, v71
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v57
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v72, v75, v76
	v_max3_f32 v71, v133, v122, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v60, v59
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v58, v70, v71
	v_max_f32_e32 v59, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v57, v59
.Ltmp18:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v58, v115, v58, v60
	v_dual_max_f32 v57, v57, v59 :: v_dual_sub_f32 v60, v115, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v136, v51, v58 :: v_dual_sub_f32 v61, v116, v57
	v_sub_f32_e32 v134, v49, v58
	v_sub_f32_e32 v138, v53, v58
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v70, v61
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v113, v113
	v_max_f32_e32 v113, v61, v59
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b16_e32 v61.h, 0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v71, 0, v60, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v48, v58
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v59, 0, v70, s46
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v129, v113
	v_sub_f32_e32 v70, v125, v113
	v_sub_f32_e32 v72, v130, v113
	v_dual_sub_f32 v75, v126, v113 :: v_dual_sub_f32 v130, v45, v58
	v_sub_f32_e32 v76, v131, v113
	v_sub_f32_e32 v115, v127, v113
	v_dual_sub_f32 v116, v132, v113 :: v_dual_sub_f32 v127, v42, v58
	v_dual_sub_f32 v125, v128, v113 :: v_dual_sub_f32 v126, v41, v58
	v_mad_u64_u32 v[41:42], null, s82, s59, v[74:75]
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v125, v125
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v71
	v_mul_f32_e32 v7, v7, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s17
	v_cndmask_b32_e64 v70, 0, v70, s18
	v_cndmask_b32_e64 v72, 0, v72, s23
	v_cndmask_b32_e64 v75, 0, v75, s24
	v_cndmask_b32_e64 v76, 0, v76, s26
	v_cndmask_b32_e64 v115, 0, v115, s29
	v_cndmask_b32_e64 v116, 0, v116, s21
	v_cndmask_b32_e64 v125, 0, v125, s25
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v131, v46, v58
	v_sub_f32_e32 v135, v50, v58
	v_sub_f32_e32 v140, v55, v58
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v70
	v_add_f32_e32 v70, v72, v75
	v_add_f32_e32 v72, v76, v115
	v_add_f32_e32 v75, v116, v125
.Ltmp20:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v54, v58
	v_dual_sub_f32 v129, v44, v58 :: v_dual_lshlrev_b32 v42, 1, v41
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v70, v72, v75
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v43, v58
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v41, s78, 1
	v_add_lshl_u32 v44, v41, s79, 1
	v_add_lshl_u32 v41, v41, s80, 1
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v70
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v121, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v121, v127
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	v_cndmask_b32_e64 v45, 0x80000000, v43, s1
	v_cndmask_b32_e64 v49, 0x80000000, v44, s1
	v_cndmask_b32_e64 v53, 0x80000000, v41, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v47, v58
	v_dual_sub_f32 v137, v52, v58 :: v_dual_mul_f32 v6, v6, v71
	v_sub_f32_e32 v62, v62, v58
	v_sub_f32_e32 v76, v119, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s44
.Ltmp25:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v119, v60
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v131
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v64, v64, v58 :: v_dual_mul_f32 v1, v1, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v61.l, v121.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v56, v58
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[64:67], 0 offen
	buffer_load_b128 v[45:48], v45, s[64:67], 0 offen
	buffer_load_b128 v[49:52], v49, s[64:67], 0 offen
	buffer_load_b128 v[53:56], v53, s[64:67], 0 offen
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v119, v119 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v63, v58
	v_dual_sub_f32 v68, v68, v58 :: v_dual_mul_f32 v5, v5, v71
	v_dual_sub_f32 v69, v69, v58 :: v_dual_mul_f32 v4, v4, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v119
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v58
	v_dual_sub_f32 v75, v118, v58 :: v_dual_mul_f32 v8, v8, v71
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v71 :: v_dual_mov_b32 v131, v60
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v122, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v122, v128
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v124, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v130
.Ltmp31:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v131, v131 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v127, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v121, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v134
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v131
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v117, v58
	v_sub_f32_e32 v117, v123, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v123, v129
	v_exp_f32_e32 v129, v136
.Ltmp35:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v131, v60 :: v_dual_and_b32 v136, 1, v61
.Ltmp36:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s41
	v_cndmask_b32_e64 v124, 0, v124, s39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v128, v135
	v_exp_f32_e32 v130, v137
.Ltmp37:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v58
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v123, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v124, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s35
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v131
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, v61.h
	v_mov_b16_e32 v61.l, v71.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v120, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v126
	v_exp_f32_e32 v126, v132
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v71, v71
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v138
	v_exp_f32_e32 v133, v139
	v_exp_f32_e32 v134, v140
	v_exp_f32_e32 v135, v141
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v63, v63
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v60, v114, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s43
	v_cndmask_b32_e64 v126, 0, v126, s37
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v64, v64
	v_mov_b32_e32 v114, v60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v131.l, v120.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s20
	v_cndmask_b32_e64 v63, 0, v63, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v123, 1, v131
	v_add3_u32 v131, v121, v136, 0x7fff
	v_and_b32_e32 v136, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s19
	v_cndmask_b32_e64 v64, 0, v64, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v121, v120, v123, 0x7fff
	v_mov_b16_e32 v123.l, v122.h
	v_mov_b16_e32 v123.h, v61.h
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s1
	v_cmp_o_f32_e64 s1, v120, v120
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v120, 1, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v125, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v71, v136, 0x7fff
	v_mov_b16_e64 v136.l, v124.h
	v_mov_b16_e64 v136.h, v61.h
	v_cndmask_b16 v131.l, 0x7fff, v121.h, s1
	v_mov_b16_e32 v61.l, v123.h
	v_add3_u32 v71, v122, v120, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_and_b32_e32 v120, 1, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v127, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v121.h, 0x7fff, v125.h, s2
	v_and_b32_e32 v125, 1, v61
	v_mov_b16_e32 v127.l, v126.h
	v_add3_u32 v120, v124, v120, 0x7fff
	v_mov_b16_e32 v127.h, v61.h
	v_mov_b16_e32 v61.l, v122.h
	v_add3_u32 v125, v123, v125, 0x7fff
	v_cmp_o_f32_e64 s2, v123, v123
	v_cndmask_b16 v121.l, 0x7fff, v71.h, s1
	v_and_b32_e32 v71, 1, v127
	v_and_b32_e32 v124, 1, v61
	v_cndmask_b16 v123.l, 0x7fff, v120.h, s17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v128, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v123.h, 0x7fff, v125.h, s2
	v_add3_u32 v71, v126, v71, 0x7fff
	v_add3_u32 v124, v122, v124, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_mov_b16_e32 v61.l, v120.h
	v_cmp_o_f32_e64 s2, v126, v126
	v_mov_b16_e32 v122.l, v119.h
	v_mov_b16_e32 v122.h, v61.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v129, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v61
	v_cndmask_b16 v124.l, 0x7fff, v71.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v130, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v122, 1, v122
	v_cndmask_b16 v124.h, 0x7fff, v124.h, s1
	v_add3_u32 v125, v120, v125, 0x7fff
	v_cmp_o_f32_e64 s1, v120, v120
	v_mov_b16_e32 v61.l, v71.h
	v_add3_u32 v120, v119, v122, 0x7fff
	v_mov_b16_e32 v122.l, v126.h
	v_mov_b16_e32 v122.h, v61.h
	v_cndmask_b16 v125.h, 0x7fff, v125.h, s1
	v_and_b32_e32 v127, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v132, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v119, v119
	v_and_b32_e32 v119, 1, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v133, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v127, v71, v127, 0x7fff
	v_mov_b16_e64 v129.l, v128.h
	v_mov_b16_e64 v129.h, v61.h
	v_cmp_o_f32_e64 s2, v71, v71
	v_mov_b16_e32 v61.l, v122.h
	v_cndmask_b16 v125.l, 0x7fff, v120.h, s1
	v_add3_u32 v71, v126, v119, 0x7fff
	v_and_b32_e32 v119, 1, v129
	v_cndmask_b16 v120.h, 0x7fff, v127.h, s2
	v_and_b32_e32 v127, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v134, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v126, v126
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v135, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v61.h
	v_add3_u32 v127, v122, v127, 0x7fff
	v_mov_b16_e64 v130.l, v129.h
	v_cmp_o_f32_e64 s2, v122, v122
	v_mov_b16_e32 v61.l, v126.h
	v_add3_u32 v119, v128, v119, 0x7fff
	v_cmp_o_f32_e64 s17, v128, v128
	v_cndmask_b16 v120.l, 0x7fff, v71.h, s1
	v_and_b32_e32 v71, 1, v130
	v_cndmask_b16 v122.h, 0x7fff, v127.h, s2
	v_and_b32_e32 v127, 1, v61
	v_cndmask_b16 v122.l, 0x7fff, v119.h, s17
	v_cmp_o_f32_e64 s1, v126, v126
	v_add3_u32 v71, v129, v71, 0x7fff
	v_mov_b16_e32 v61.l, v63.h
	v_add3_u32 v119, v126, v127, 0x7fff
	v_cmp_o_f32_e64 s2, v129, v129
	v_mov_b16_e32 v126.l, v62.h
	v_mov_b16_e32 v126.h, v61.h
	v_and_b32_e32 v127, 1, v61
	v_mov_b16_e32 v61.l, v65.h
	v_cndmask_b16 v119.l, 0x7fff, v71.h, s2
	v_cndmask_b16 v119.h, 0x7fff, v119.h, s1
	v_and_b32_e32 v71, 1, v126
	v_add3_u32 v126, v63, v127, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_and_b32_e32 v127, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v62, v71, 0x7fff
	v_mov_b16_e32 v71.l, v64.h
	v_mov_b16_e32 v71.h, v61.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v126.h, 0x7fff, v126.h, s1
	v_cmp_o_f32_e64 s1, v62, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v62, 1, v71
	v_add3_u32 v71, v65, v127, 0x7fff
	v_mov_b16_e32 v127.l, v66.h
	v_mov_b16_e32 v127.h, v61.h
	v_mov_b16_e32 v61.l, v67.h
	v_cmp_o_f32_e64 s2, v65, v65
	v_cndmask_b16 v126.l, 0x7fff, v63.h, s1
	v_add3_u32 v62, v64, v62, 0x7fff
	v_and_b32_e32 v63, 1, v127
	v_and_b32_e32 v65, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v69, s13
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s2
	v_add3_u32 v63, v66, v63, 0x7fff
	v_add3_u32 v65, v67, v65, 0x7fff
	v_mov_b16_e32 v69.l, v68.h
	v_mov_b16_e32 v69.h, v61.h
	v_cmp_o_f32_e64 s2, v67, v67
	v_mov_b16_e32 v61.l, v64.h
	v_cmp_o_f32_e64 s12, v66, v66
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.l, 0x7fff, v62.h, s1
	v_and_b32_e32 v62, 1, v69
	v_cndmask_b16 v69.h, 0x7fff, v65.h, s2
	v_and_b32_e32 v65, 1, v61
	v_cndmask_b16 v69.l, 0x7fff, v63.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v75, s11
	v_cndmask_b32_e64 v66, 0, v72, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v64, v64
	v_add3_u32 v65, v64, v65, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v61.l, v63.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v66.h
	v_mov_b16_e32 v64.h, v61.h
	v_cndmask_b16 v72.h, 0x7fff, v65.h, s1
	v_and_b32_e32 v65, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v115, s9
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v116, v116
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v65, v63, v65, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_mov_b16_e32 v61.l, v67.h
	v_add3_u32 v62, v68, v62, 0x7fff
	v_cmp_o_f32_e64 s2, v68, v68
	v_add3_u32 v64, v66, v64, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v65.h, s1
	v_cmp_o_f32_e64 s1, v66, v66
	v_and_b32_e32 v65, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v70, s6
	v_cndmask_b32_e64 v70, 0, v117, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v62.h, s2
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v76, s8
	v_cndmask_b32_e64 v66, 0, v116, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v64.h, s1
	v_add3_u32 v64, v67, v65, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	v_mov_b16_e32 v115.l, v70.h
	v_mov_b16_e32 v115.h, v61.h
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v63.h, v61.h
	v_mov_b16_e32 v61.l, v66.h
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v61.h
	v_cndmask_b16 v147.h, 0x7fff, v64.h, s1
	v_and_b32_e32 v64, 1, v115
	v_and_b32_e32 v63, 1, v63
	v_and_b32_e32 v76, 1, v61
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s6, v70, v70
	v_add3_u32 v64, v70, v64, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v63, v62, v63, 0x7fff
	v_cmp_o_f32_e64 s1, v62, v62
	v_add3_u32 v62, v68, v65, 0x7fff
	v_add3_u32 v65, v66, v76, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v64.h, s6
	v_permlanex16_b32 v64, v121, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v147.l, 0x7fff, v63.h, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v118, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v63, v64, v121, v98
	v_perm_b32 v64, v64, v121, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v121, 0, v82
	s_waitcnt vmcnt(3)
	ds_store_b128 v121, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v121, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v121, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v121, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v41, v100
	ds_load_u16_d16 v42, v100 offset:256
	ds_load_u16_d16 v43, v100 offset:512
	ds_load_u16_d16 v44, v100 offset:768
	ds_load_u16_d16 v45, v100 offset:1024
	ds_load_u16_d16 v46, v100 offset:1280
	ds_load_u16_d16 v47, v100 offset:1536
	ds_load_u16_d16 v48, v100 offset:1792
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v61.l, v67.h
	v_cmp_o_f32_e64 s4, v68, v68
	v_cmp_o_f32_e64 s2, v66, v66
	v_cmp_o_f32_e64 s5, v67, v67
	v_permlanex16_b32 v66, v123, s81, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v61, 1, v61
	v_cndmask_b16 v70.l, 0x7fff, v62.h, s4
	v_permlanex16_b32 v62, v131, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v124, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v115, v125, s81, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v61, v67, v61, 0x7fff
	v_permlanex16_b32 v116, v120, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v117, v122, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v118, v119, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v127, v126, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v128, v71, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v65.h, s2
	v_cndmask_b16 v76.h, 0x7fff, v61.h, s5
	v_perm_b32 v61, v62, v131, v98
	v_perm_b32 v62, v62, v131, v99
	v_perm_b32 v65, v66, v123, v98
	v_perm_b32 v66, v66, v123, v99
	v_perm_b32 v67, v68, v124, v98
	v_perm_b32 v68, v68, v124, v99
	v_perm_b32 v49, v115, v125, v98
	v_perm_b32 v50, v115, v125, v99
	v_perm_b32 v51, v116, v120, v98
	v_perm_b32 v52, v116, v120, v99
	v_perm_b32 v53, v117, v122, v98
	v_perm_b32 v54, v117, v122, v99
	v_perm_b32 v55, v118, v119, v98
	v_perm_b32 v56, v118, v119, v99
	v_perm_b32 v115, v127, v126, v98
	v_perm_b32 v116, v127, v126, v99
	v_perm_b32 v117, v128, v71, v98
	v_perm_b32 v118, v128, v71, v99
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v100 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v100 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v100 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v100 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v100 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v100 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v100 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v100 offset:1920
	ds_load_u16_d16 v123, v100 offset:2048
	ds_load_u16_d16 v124, v100 offset:2304
	ds_load_u16_d16 v125, v100 offset:2560
	ds_load_u16_d16 v126, v100 offset:2816
	ds_load_u16_d16 v127, v100 offset:3072
	ds_load_u16_d16 v128, v100 offset:3328
	ds_load_u16_d16 v129, v100 offset:3584
	ds_load_u16_d16 v130, v100 offset:3840
	ds_load_u16_d16 v131, v100 offset:4096
	ds_load_u16_d16 v132, v100 offset:4352
	ds_load_u16_d16 v133, v100 offset:4608
	ds_load_u16_d16 v134, v100 offset:4864
	ds_load_u16_d16 v135, v100 offset:5120
	ds_load_u16_d16 v136, v100 offset:5376
	ds_load_u16_d16 v137, v100 offset:5632
	ds_load_u16_d16 v138, v100 offset:5888
	ds_load_u16_d16 v139, v100 offset:6144
	ds_load_u16_d16 v140, v100 offset:6400
	ds_load_u16_d16 v141, v100 offset:6656
	ds_load_u16_d16 v142, v100 offset:6912
	ds_load_u16_d16 v143, v100 offset:7168
	ds_load_u16_d16 v144, v100 offset:7424
	ds_load_u16_d16 v145, v100 offset:7680
	ds_load_u16_d16 v146, v100 offset:7936
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v100 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v100 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v125, v100 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v126, v100 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v127, v100 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v100 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v100 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v100 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v131, v100 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v100 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v100 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v100 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v100 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v100 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v100 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v100 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v100 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v100 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v141, v100 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v142, v100 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v100 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v100 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v100 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v100 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v148, v69, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v149, v72, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[61:68], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v150, v75, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v151, v147, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v152, v70, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v76, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v119, v148, v69, v98
	v_perm_b32 v120, v148, v69, v99
	v_perm_b32 v121, v149, v72, v98
	v_perm_b32 v122, v149, v72, v99
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[49:56], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v150, v75, v98
	v_perm_b32 v42, v150, v75, v99
	v_perm_b32 v43, v151, v147, v98
	v_perm_b32 v44, v151, v147, v99
	v_perm_b32 v45, v152, v70, v98
	v_perm_b32 v46, v152, v70, v99
	v_perm_b32 v47, v153, v76, v98
	v_perm_b32 v48, v153, v76, v99
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[131:138], v[115:122], v[1:8]
	v_dual_mov_b32 v115, v58 :: v_dual_mov_b32 v116, v57
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[139:146], v[41:48], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s82, s71, s73
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s1, s71, v84
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s82, s58, v[73:74]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v140, s55 :: v_dual_mov_b32 v137, s52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s2, vcc_lo, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v138, s53 :: v_dual_mov_b32 v135, s50
	v_dual_mov_b32 v136, s51 :: v_dual_mov_b32 v133, s48
	v_dual_mov_b32 v139, s54 :: v_dual_lshlrev_b32 v42, 1, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s75, 1
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v134, s49 :: v_dual_mov_b32 v75, 0
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v43, s2
	v_cndmask_b32_e64 v49, 0x80000000, v44, s2
	v_cndmask_b32_e64 v53, 0x80000000, v41, s2
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s2, s71, v85
	v_mov_b32_e32 v76, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v83, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v83, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v92
	ds_load_b128 v[41:44], v93
	ds_load_b128 v[49:52], v93 offset:2048
	ds_load_b128 v[53:56], v92 offset:2048
	ds_load_b128 v[121:124], v92 offset:4096
	ds_load_b128 v[117:120], v93 offset:4096
	ds_load_b128 v[125:128], v93 offset:6144
	ds_load_b128 v[129:132], v92 offset:6144
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s11, s45, s2
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[33:40], v[133:140]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[33:40], v[133:140]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[117:124], v[33:40], v[133:140]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[33:40], v[133:140]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v90
	ds_load_b128 v[117:120], v91
	ds_load_b128 v[125:128], v91 offset:2048
	ds_load_b128 v[129:132], v90 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[117:124], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[25:32], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v90 offset:4096
	ds_load_b128 v[117:120], v91 offset:4096
	ds_load_b128 v[125:128], v91 offset:6144
	ds_load_b128 v[129:132], v90 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[117:124], v[25:32], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[25:32], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v88
	ds_load_b128 v[117:120], v89
	ds_load_b128 v[125:128], v89 offset:2048
	ds_load_b128 v[129:132], v88 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[117:124], v[17:24], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[17:24], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v88 offset:4096
	ds_load_b128 v[117:120], v89 offset:4096
	ds_load_b128 v[125:128], v89 offset:6144
	ds_load_b128 v[129:132], v88 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[117:124], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v86
	ds_load_b128 v[117:120], v87
	ds_load_b128 v[125:128], v87 offset:2048
	ds_load_b128 v[129:132], v86 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[117:124], v[9:16], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[121:124], v86 offset:4096
	ds_load_b128 v[117:120], v87 offset:4096
	ds_load_b128 v[125:128], v87 offset:6144
	ds_load_b128 v[129:132], v86 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[117:124], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[9:16], v[41:48]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s4, s11
	s_cbranch_execz .LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v75, s71, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s2, s68, v75
	v_add_co_ci_u32_e64 v76, null, s69, v76, s2
	global_load_b64 v[75:76], v[75:76], off
	s_branch .LBB0_2
.LBB0_5:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v57, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v60, v8
.LBB0_6:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	s_mov_b32 s1, 0x76543210
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp42:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s70, s70, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v9, 0xff800000, v57, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v11, 0, v60 :: v_dual_and_b32 v12, 12, v79
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s59, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v11, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s47, s70
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp47:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_nc_u32 v12, 0, v12
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v11, v13 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_and_b32 v10, 12, v80
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_mov_b32 v16, v2
.Ltmp52:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v14, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v11, v15 :: v_dual_add_f32 v2, v2, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v17, v3
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v13
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v14
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v6, vcc_lo
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v12
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp66:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_add_f32 v3, v3, v17
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v1
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_cndmask_b32 v13, 0, v5
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v9 :: v_dual_mov_b32 v5, v3
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v16, v2
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_cndmask_b32 v11, 0, v8
	v_max_f32_e32 v8, v9, v9
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v8, v6
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v3, v5 :: v_dual_mov_b32 v5, v10
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v11
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v17, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v20
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v4, v17
.Ltmp88:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v10, v5
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v11
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v9, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v3
	v_dual_add_f32 v3, v2, v16 :: v_dual_mov_b32 v16, v12
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v10, v8
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_e32 v17, v13
.Ltmp94:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_add_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v11, v20 :: v_dual_mov_b32 v17, v13
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v16
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v14, v18 :: v_dual_mov_b32 v16, v12
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v14, v11
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_8
; %bb.7:
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp114:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp116:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp118:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_8:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp120:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v79
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v77
.Ltmp122:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v77
	v_and_b32_e32 v2, 32, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp124:
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
	v_cmp_gt_i32_e32 vcc_lo, s59, v5
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
.Ltmp125:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 154
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 154
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8788
; TotalNumSgprs: 85
; NumVgprs: 154
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 154
; Occupancy: 9
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     154
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
