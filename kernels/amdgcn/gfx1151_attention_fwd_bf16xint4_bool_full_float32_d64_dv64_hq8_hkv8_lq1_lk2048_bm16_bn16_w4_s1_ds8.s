	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x60
	s_load_b64 s[18:19], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 3, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v53, 1, v0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v57, 31, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v60, 15, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v54, 0x70, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v7, 0x70, v53
	v_lshrrev_b32_e32 v58, 5, v0
	v_lshlrev_b32_e32 v55, 5, v0
	v_lshlrev_b32_e32 v56, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, v6, v7
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s33
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s33
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s12, s8, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v61, 0, v6
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[3:4], null, s18, v59, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_add_i32 s8, s4, 1
	s_sub_i32 s7, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s8, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s13, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s13, s12
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v59
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s4, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s15, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s4, v3, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, 1, v4
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s14
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s33, 0x7f
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s33
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[2:5], v2, s[20:23], 0 offen
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s15, s2
	s_lshl_b32 s36, s4, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s36
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s37, s2, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_ge_i32 s36, s37
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v1
	s_clause 0x2
	s_load_b128 s[24:27], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	.loc	1 761 22                        ; attention.py:761:22
	v_lshlrev_b32_e32 v52, 2, v60
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v3, v60, 7, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 29
	v_bfe_i32 v51, v0, 2, 1
	s_add_i32 s1, s3, s1
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s2, s3, 11
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v5, 16, v3
	v_xor_b32_e32 v6, 32, v3
	v_xor_b32_e32 v7, 48, v3
	v_xor_b32_e32 v8, 64, v3
	v_xor_b32_e32 v9, 0x50, v3
	v_xor_b32_e32 v10, 0x60, v3
	v_xor_b32_e32 v11, 0x70, v3
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_add_nc_u32 v71, 0, v5
	v_add_nc_u32_e32 v72, 0, v3
	v_lshrrev_b32_e32 v3, 2, v0
	v_bfe_i32 v5, v0, 4, 1
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v68, 0, v8
	v_and_b32_e32 v8, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v3, v3, v55
	v_and_b32_e32 v5, 0x84, v5
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s39, s8, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v7
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s9, s9, s1
	v_and_or_b32 v74, 0x63, v3, v5
	v_cmp_eq_u32_e64 s1, 0, v8
	v_mov_b32_e32 v5, 0x7632
	v_mov_b32_e32 v3, 0x5410
	v_and_b32_e32 v7, 0x60, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v4, 4, v54
	v_and_b32_e32 v50, 0x160, v55
	v_cndmask_b32_e64 v5, 0x3276, v5, s1
	v_cndmask_b32_e64 v3, 0x1054, v3, s1
	v_lshrrev_b32_e32 v41, 3, v7
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s1, s12, 4
	v_lshlrev_b32_e32 v7, 4, v7
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v3, v3, 8, v3
	v_xor_b32_e32 v76, v56, v41
	v_lshl_or_b32 v41, s13, 4, v59
	v_add3_u32 v80, s36, s2, v59
	v_and_b32_e32 v5, 0x760076, v5
	v_and_b32_e32 v3, 0x540054, v3
	v_and_b32_e32 v51, 0x90, v51
	v_subrev_nc_u32_e32 v41, s1, v41
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v3, v3, 4, v3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s8, s10, s8
	.loc	1 903 13                        ; attention.py:903:13
	v_mul_lo_u32 v41, s11, v41
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v1, 1, v1
	v_and_b32_e32 v79, 0x7060706, v5
	v_bfe_i32 v5, v0, 0, 1
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v64, 0x400, v4
	v_lshl_or_b32 v77, s3, 10, v4
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v78, 0x5040504, v3
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_lshlrev_b32 v3, 7, v0
	v_lshrrev_b32_e32 v4, 2, v54
	v_and_b32_e32 v5, 0x90, v5
	v_mul_lo_u32 v82, s18, v80
	v_or3_b32 v80, v50, v7, v51
	s_add_i32 s1, s36, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v66, 0, v10
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s1, s1, s9
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v70, 0, v6
	v_lshl_or_b32 v73, v57, 2, v58
	v_and_b32_e32 v3, 0x700, v3
	v_xor_b32_e32 v4, v5, v4
	v_xor_b32_e32 v5, 16, v80
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v81, s1, v41, v1
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v6, 28, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v65, 0, v11
	v_add_nc_u32_e32 v67, 0, v9
	v_xor_b32_e32 v8, 4, v74
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v94, 0, v5
	v_mov_b32_e32 v5, v41
	v_lshl_or_b32 v75, v57, 5, v6
	v_xor_b32_e32 v6, 0x84, v73
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v82, v82, 1, v2
	v_add_nc_u32_e32 v84, 0, v8
	v_dual_mov_b32 v2, v41 :: v_dual_add_nc_u32 v93, v3, v4
	v_sub_nc_u32_e32 v63, 0x800, v1
	v_add_nc_u32_e32 v83, 0, v6
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, v41
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v71
	ds_load_b128 v[33:36], v72
	v_mov_b32_e32 v4, v41
	ds_load_b128 v[13:16], v65
	ds_load_b128 v[9:12], v66
	v_mov_b32_e32 v6, v41
	ds_load_b128 v[21:24], v67
	ds_load_b128 v[17:20], v68
	v_mov_b32_e32 v8, v41
	ds_load_b128 v[29:32], v69
	ds_load_b128 v[25:28], v70
	v_xor_b32_e32 v42, 4, v75
	v_xor_b32_e32 v43, 8, v75
	v_xor_b32_e32 v44, 12, v75
	v_xor_b32_e32 v45, 16, v75
	v_xor_b32_e32 v46, 20, v75
	v_xor_b32_e32 v47, 24, v75
	v_xor_b32_e32 v48, 28, v75
	v_xor_b32_e32 v49, 0x210, v76
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s19, v52
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v62, 0x800, v59
	v_add_nc_u32_e32 v85, 0, v42
	v_add_nc_u32_e32 v86, 0, v43
	v_add_nc_u32_e32 v87, 0, v44
	v_add_nc_u32_e32 v88, 0, v45
	v_add_nc_u32_e32 v89, 0, v46
	v_add_nc_u32_e32 v90, 0, v47
	v_add_nc_u32_e32 v91, 0, v48
	v_dual_mov_b32 v7, v41 :: v_dual_add_nc_u32 v92, 0, v49
	s_and_b32 s5, s5, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s38, s3, 7
	s_mov_b64 s[34:35], s[26:27]
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s18, s18, 5
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s28, s6
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	v_and_b16 v50.l, 0xff, v50.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b16 v51.l, 0xff, v51.l
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v103, s39, v43 :: v_dual_add_nc_u32 v100, 0, v73
	v_dual_mul_f32 v104, s39, v44 :: v_dual_add_nc_u32 v101, 0, v74
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s1, 0, v50.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u16_e64 s2, 0, v51.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v102, s39, v42 :: v_dual_mul_f32 v105, s39, v45
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s1, s4, s1
	s_and_b32 s4, s4, s2
	v_cndmask_b32_e64 v51, 0, 1, s1
	v_cndmask_b32_e64 v99, 0, 1, s4
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s2, s36, 1
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v46, s39, v46 :: v_dual_mul_f32 v47, s39, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_mov_b16_e32 v50.l, v51.l
	v_mov_b16_e32 v51.l, v99.l
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_lt_i32_e64 s13, s2, v64
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b8 v100, v50
	ds_store_b8 v83, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v50, v101
	ds_load_u8_d16 v51, v84
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v51, v101 offset:8
	ds_load_u8_d16 v99, v84 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v99, v101 offset:16
	ds_load_u8_d16 v100, v84 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v100, v101 offset:24
	ds_load_u8_d16 v101, v84 offset:24
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v48, s39, v48 :: v_dual_mul_f32 v49, s39, v49
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v117.h, v50.h
	v_mov_b16_e32 v119.h, v50.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v108.l, v50.h
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v107.h, v50.h
	v_mov_b16_e32 v106.h, v50.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.l, v50.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.h, v50.h
	v_mov_b16_e32 v113.h, v50.h
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v42.l, 1, v50.l
	v_and_b16 v42.h, 1, v51.l
	v_and_b16 v43.l, 1, v51.h
	v_and_b16 v43.h, 1, v99.l
	v_and_b16 v44.l, 1, v99.h
	v_cmp_eq_u16_e64 s5, 1, v42.l
	v_cmp_eq_u16_e64 s8, 1, v42.h
	v_cmp_eq_u16_e64 s6, 1, v43.l
	v_cmp_eq_u16_e64 s10, 1, v43.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v42, 0, v75
	v_cndmask_b32_e64 v51, 0xff800000, v102, s5
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v43, s2, v77
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v99, 0xff800000, v103, s8
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v44.h, 1, v100.l
	v_and_b16 v45.l, 1, v100.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v100, 0xff800000, v104, s6
	ds_store_b32 v42, v51
	ds_store_b32 v85, v99
	ds_store_b32 v86, v100
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[42:43], null, v43, s19, v[52:53]
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v45.h, 1, v101.l
	v_cmp_eq_u16_e64 s7, 1, v44.l
	v_cmp_eq_u16_e64 s11, 1, v44.h
	v_cmp_eq_u16_e64 s9, 1, v45.l
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s2, s0, s13
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s12, 1, v45.h
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s2, s36, 4
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v101, 0xff800000, v105, s10
	v_cndmask_b32_e64 v102, 0xff800000, v46, s7
	v_cndmask_b32_e64 v44, 0xff800000, v47, s11
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s2, s2, s38
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s9
	v_cndmask_b32_e64 v45, 0xff800000, v49, s12
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s2, s2, s19
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v87, v101
	ds_store_b32 v88, v102
	ds_store_b32 v89, v44
	ds_store_b32 v90, v48
	ds_store_b32 v91, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v49, v42, s[28:31], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v42, s2, v52, 1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v110, v51, v99, v100
	v_max3_f32 v111, v101, v102, v44
	v_max_f32_e32 v112, v48, v45
.Ltmp2:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v97
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v114.h, v50.h
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v81, 16, v81
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v110, v110, v111, v112
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v112.h, v50.h
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[46:47], v42, s[24:27], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v42, 0, v76
	ds_load_b32 v43, v92
	ds_load_b32 v42, v42
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v116, v110, s40, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v50.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v82, s18, v82
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v110, v97, v110, v116
	v_max_f32_e32 v98, v98, v98
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v120, 0, v80
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s36, s36, 16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v116, v97, v110
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v51, v51, v110
	v_sub_f32_e32 v99, v99, v110
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s36, s37
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v101, v101, v110
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v116, v116
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v99, v99
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v103, v43, v43 :: v_dual_max_f32 v104, v42, v42
.Ltmp8:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v103, v104, v103
.Ltmp10:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v97, 0, v116, s2
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v100, v100, v110
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v51, 0, v51, s5
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v102, v102, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v104, v103 :: v_dual_mul_f32 v5, v5, v97
.Ltmp12:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v100, v100
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v97
	v_mul_f32_e32 v6, v6, v97
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v104, v104 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v97
	v_mul_f32_e32 v8, v8, v97
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v102, v102
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s2, v51, v51
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v104, v104, v104
.Ltmp16:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v99, 0, v99, s8
	v_cndmask_b32_e64 v100, 0, v100, s6
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v97
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v101, s10
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v103, v103, v104 :: v_dual_mul_f32 v2, v2, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v112.l, v100.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v100, v100
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v105, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v105, v105 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v105, v105, v105 :: v_dual_max_f32 v104, v96, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v103, v103, v105
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v105.h, v50.h
	v_mov_b16_e32 v105.l, v51.h
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v118, v103 :: v_dual_and_b32 v97, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v118, v118 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v51, v51, v97, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v118, v118, v118
	v_max_f32_e32 v103, v103, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v45, v45, v110 :: v_dual_max_f32 v98, v98, v103
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v42, v42, v98
	v_sub_f32_e32 v43, v43, v98
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v43, v43
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v42, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v43, 0, v43, s4
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s4, v101, v101
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v44, v44, v110 :: v_dual_mov_b32 v43, v42
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v48, v48, v110 :: v_dual_add_f32 v43, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v116, 0, v44, s11
	v_cndmask_b32_e64 v44, 0, v102, s7
	v_cndmask_b32_e64 v102, 0, v45, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v116, v116
	v_mov_b16_e32 v117.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v44, v44
	v_cmp_o_f32_e64 s8, v102, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v48, s9
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v48, v43
.Ltmp31:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v119.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v43, v43, v48 :: v_dual_max_f32 v42, v104, v103
.Ltmp35:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v103, 1, v112
	v_and_b32_e32 v48, 1, v119
	v_add3_u32 v97, v100, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v103, v43
.Ltmp37:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v105, v96, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v97.l, 0x7fff, v51.h, s2
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v96
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v45, v45, v48, 0x7fff
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v103, v103 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v100, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v104, 1, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v112.l, 0x7fff, v45.h, s9
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v43, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp41:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v44, v44, v104, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v97.h, s5
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v96, 0, v100, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v105.l, 0x7fff, v44.h, s7
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v43, v95, v96
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v48, 8, v49
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v44.l, v49.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v45.l, 4, v49.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v51, 24, v49
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v103, v49, 8, 4
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v45.h, v48.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v44.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v50.l, v45.l, 15
	v_lshrrev_b16 v45.l, 4, v48.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v44.h, v49.h, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v117, v49, 16, 4
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v108.h, v46.l
	v_mov_b16_e32 v109.h, v47.l
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v100, 15, v49
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v119, 0xffff0000, v46
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v46.l, v51.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v107.l, 4, v51.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v51, -16, v103
	v_or_b32_e32 v48, -16, v100
	.loc	1 987 29                        ; attention.py:987:29
	v_bfe_u32 v118, v49, 24, 4
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v121, -16, v117
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v106.l, v45.l, 15
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_bfe_u32 v49, v49, 20, 4
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v48, v100, v48, s2
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v45.h
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v122, -16, v118
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v123, 0, v50, s13
	v_cndmask_b32_e64 v49, 0, v49, s13
	v_cndmask_b32_e64 v107, 0, v107, s13
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v45, v103, v51, s2
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v44.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v100, -16, v123
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v103, -16, v49
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v51, 0, v106, s13
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v44, v117, v121, s2
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v46.l
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v106, -16, v107
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v48, v108, v48
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v46, v118, v122, s2
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s2, 7, v123
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v117, -16, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_dual_mul_f32 v45, v119, v45 :: v_dual_mul_f32 v44, v109, v44
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v100, v123, v100, s2
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s2, 7, v49
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v51
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.l, v44.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v49, v49, v103, s2
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s2, 7, v107
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v51, v51, v117, s5
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v103, v107, v106, s2
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v46, v47, v46
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_and_b32_e32 v106, 1, v50
	v_mov_b16_e32 v50.l, v45.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v49, v109, v49
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v107, 1, v115
	v_cmp_o_f32_e64 s2, v48, v48
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v100, v108, v100 :: v_dual_mul_f32 v47, v47, v103
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v48, v48, v106, 0x7fff
	v_and_b32_e32 v103, 1, v50
	v_mov_b16_e32 v50.l, v49.h
	v_cmp_o_f32_e64 s7, v44, v44
	v_add3_u32 v44, v44, v107, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v51, v119, v51
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.l, v100.h
	v_cndmask_b16 v44.l, 0x7fff, v48.h, s2
	v_and_b32_e32 v48, 1, v50
	v_mov_b16_e32 v50.l, v46.h
	v_mov_b16_e32 v114.l, v51.h
	v_and_b32_e32 v106, 1, v113
	v_mov_b16_e32 v111.l, v47.h
	v_cmp_o_f32_e64 s10, v100, v100
	v_and_b32_e32 v107, 1, v50
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v50.l, v99.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s11, v49, v49
	v_add3_u32 v45, v45, v103, 0x7fff
	v_add3_u32 v100, v100, v106, 0x7fff
	v_and_b32_e32 v106, 1, v114
	v_add3_u32 v48, v49, v48, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v49, 1, v50
	v_mov_b16_e32 v50.l, v101.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v103, 1, v111
	v_cmp_o_f32_e64 s9, v46, v46
	v_cmp_o_f32_e64 s2, v51, v51
	v_cndmask_b16 v100.l, 0x7fff, v45.h, s5
	v_add3_u32 v51, v51, v106, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v48.h, s11
	v_add3_u32 v46, v46, v107, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v48, v99, v49, 0x7fff
	v_and_b32_e32 v49, 1, v50
	v_mov_b16_e32 v50.l, v116.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v47, v47
	v_add3_u32 v47, v47, v103, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s7
	v_cndmask_b16 v44.h, 0x7fff, v100.h, s10
	v_cndmask_b16 v100.h, 0x7fff, v51.h, s2
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v46, 1, v50
	v_mov_b16_e32 v50.l, v102.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s12
	ds_store_2addr_b32 v93, v44, v100 offset1:8
	ds_store_2addr_b32 v93, v45, v47 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v100, 1, v50
	v_cndmask_b16 v97.h, 0x7fff, v48.h, s1
	v_add3_u32 v99, v101, v49, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v101, v116, v46, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[44:47], v120
	ds_load_b128 v[48:51], v94
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v100, v102, v100, 0x7fff
	v_cndmask_b16 v104.h, 0x7fff, v99.h, s4
	v_permlanex16_b32 v102, v97, s40, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v105.h, 0x7fff, v101.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v112.h, 0x7fff, v100.h, s8
	v_permlanex16_b32 v95, v104, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v99, v102, v97, v78
	v_permlanex16_b32 v96, v105, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v100, v102, v97, v79
	v_permlanex16_b32 v97, v112, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v95, v104, v78
	v_perm_b32 v102, v95, v104, v79
	v_perm_b32 v103, v96, v105, v78
	v_perm_b32 v104, v96, v105, v79
	v_perm_b32 v105, v97, v112, v78
	v_perm_b32 v106, v97, v112, v79
	v_mov_b32_e32 v97, v110
	v_dual_mov_b32 v95, v43 :: v_dual_mov_b32 v96, v42
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[44:51], v[99:106], v[1:8]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_lt_i32_e64 s1, s36, v62
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v47, v41
	v_mov_b16_e32 v50.h, 0
	v_mov_b16_e32 v50.l, 0
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v42, 0x80000000, v82, s1
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_lt_i32_e64 s1, s36, v63
	v_mov_b16_e32 v51.l, v50.h
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[43:46], v42, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s4, s14, s1
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v61, v[43:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[99:102], v72
	ds_load_b128 v[103:106], v71
	ds_load_b128 v[107:110], v70
	ds_load_b128 v[111:114], v69
	ds_load_b128 v[115:118], v68
	ds_load_b128 v[119:122], v67
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[123:126], v66
	ds_load_b128 v[127:130], v65
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[99:106], v[33:40], v[42:49]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[107:114], v[25:32], v[42:49]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[115:122], v[17:24], v[42:49]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[123:130], v[9:16], v[42:49]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s2, s4
	s_cbranch_execz .LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	v_ashrrev_i32_e32 v51, 31, v81
	v_add_co_u32 v99, s1, s34, v81
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v100, null, s35, v51, s1
	global_load_d16_b16 v50, v[99:100], off
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v51.l, 8, v50.l
	s_branch .LBB0_2
.LBB0_5:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v43, v8
.LBB0_6:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	s_mov_b32 s1, 0x76543210
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp43:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s33, s33, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v9, 0xff800000, v42, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v11, 0, v43 :: v_dual_and_b32 v12, 12, v56
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v60
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s19, 2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v11, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s15, s33
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp49:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_nc_u32 v12, 0, v12
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, v11, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v10 :: v_dual_and_b32 v10, 12, v59
.Ltmp52:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_mov_b32 v13, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_mov_b32 v14, v9
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v10, 0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_add_f32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v17, v3
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v16 :: v_dual_add_f32 v1, v1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v8 :: v_dual_max_f32 v9, v9, v14
.Ltmp64:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v6, vcc_lo
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v12
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp68:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_add_f32 v3, v3, v17
.Ltmp70:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v11, v1 :: v_dual_add_f32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v12, v12, v16
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_add_f32 v1, v1, v11
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_e32 v11, v2
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v4, v1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v5 :: v_dual_add_f32 v2, v2, v11
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v6
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	v_mov_b32_e32 v19, v15
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v18, v14
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v10, v5 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v4
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v17
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v14, v14, v18
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_add_f32_e32 v15, v15, v19
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v17
	v_add_f32_e32 v17, v8, v20
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_dual_mov_b32 v21, v17 :: v_dual_mov_b32 v12, v8
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v18, v14
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v13
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v17, v21
	v_add_f32_e32 v15, v15, v20
.Ltmp108:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v58, v57
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_8
; %bb.7:
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp112:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp114:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_8:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v6, v5, v6
.Ltmp116:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xc0, v56
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_add_f32 v4, v1, v3
.Ltmp118:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v53
	v_and_b32_e32 v2, 32, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v54, 1, 0
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_f32 v19, v15, v19
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp120:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v9, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v9
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s19, v9
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp121:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 131
		.amdhsa_next_free_sgpr 41
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 131
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5404
; TotalNumSgprs: 43
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 131
; Occupancy: 10
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
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
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
