	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b32 s18, s[0:1], 0x60
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 15, v0
	v_lshrrev_b32_e32 v55, 4, v0
	s_mov_b32 s11, 0x31027000
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v50, 0x70, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v25, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v57, 3, v25
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s12, s18
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s18
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s5, 0, s12
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 2, v54
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s14, s4, s5
	s_load_b32 s5, s[0:1], 0x58
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s12
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s7, s12
	s_cmp_ge_u32 s7, s12
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s7, s12
	s_cselect_b32 s4, s8, s4
	s_load_b64 s[8:9], s[0:1], 0x0
	s_xor_b32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s7, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s5, v55, v[1:2]
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s15, 4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s13, s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v55
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s4, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s15, s15, s18
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s10, s4, s5
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s15, s2, s15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, 1, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s10, v2, 1
	s_mov_b32 s10, 0x7ffffffe
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s13, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	v_xor_b32_e32 v3, v3, v50
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s8, s18, 0x7f
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v58, 0, v3
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s9, s8, s18
	s_abs_i32 s8, s8
	s_ashr_i32 s9, s9, 31
	s_mul_hi_u32 s10, s8, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s10, s12
	s_add_i32 s14, s10, 1
	s_sub_i32 s8, s8, s11
	s_sub_i32 s2, s8, s12
	s_cmp_ge_u32 s8, s12
	s_cselect_b32 s10, s14, s10
	s_cselect_b32 s2, s2, s8
	s_add_i32 s8, s10, 1
	s_cmp_ge_u32 s2, s12
	s_cselect_b32 s2, s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s8, s15, s2
	s_lshl_b32 s19, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s8, s2, s19
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s33, s8, 0x800
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s19, s33
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v1, 3, v25
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow59
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b32 s14, s[0:1], 0x5c
	v_lshlrev_b32_e32 v51, 1, v0
	v_and_b32_e32 v56, 7, v0
	v_lshlrev_b32_e32 v53, 2, v0
	v_lshlrev_b32_e32 v52, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b128 s[28:31], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x28
	v_dual_mov_b32 v48, 0x5410 :: v_dual_lshlrev_b32 v1, 4, v56
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_and_b32_e32 v41, 16, v0
	s_lshr_b32 s0, s0, 29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v27, v54, 7, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_bfe_i32 v47, v0, 3, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v6, 0x70, v27
	v_xor_b32_e32 v28, 16, v27
	v_and_b32_e32 v29, 1, v0
	v_lshrrev_b32_e32 v71, 1, v0
	v_and_b32_e32 v47, 0x84, v47
	v_add_nc_u32_e32 v62, 0, v6
	v_add_nc_u32_e32 v68, 0, v28
	.loc	1 956 27                        ; attention.py:956:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s12, s29, s0
	v_cmp_eq_u32_e64 s0, 0, v41
	v_dual_mov_b32 v41, 0x7632 :: v_dual_and_b32 v28, 14, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v1, 32, v27
	v_xor_b32_e32 v2, 48, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v48, 0x1054, v48, s0
	v_cndmask_b32_e64 v41, 0x3276, v41, s0
	v_xor_b32_e32 v3, 64, v27
	v_xor_b32_e32 v4, 0x50, v27
	v_xor_b32_e32 v5, 0x60, v27
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v69, 0, v27
	v_and_b32_e32 v27, 60, v51
	v_lshlrev_b32_e32 v30, 5, v29
	v_and_b32_e32 v31, 64, v53
	v_mul_u32_u24_e32 v28, 0x42, v28
	v_bfe_i32 v72, v0, 7, 1
	v_lshrrev_b32_e32 v73, 5, v0
	v_and_or_b32 v47, v71, 3, v47
	v_lshl_or_b32 v48, v48, 8, v48
	v_lshl_or_b32 v41, v41, 8, v41
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v26, 5, v25
	v_lshl_or_b32 v25, v25, 2, v27
	v_add3_u32 v70, v28, v30, v31
	v_and_b32_e32 v72, 0x84, v72
	v_and_or_b32 v27, v73, 3, v27
	v_or3_b32 v71, v47, v30, v31
	v_and_b32_e32 v31, 0x540054, v48
	v_and_b32_e32 v41, 0x760076, v41
	.loc	1 903 13                        ; attention.py:903:13
	v_sub_nc_u32_e32 v61, 0x400, v26
	v_xor_b32_e32 v27, v27, v72
	v_lshl_or_b32 v72, s3, 10, v26
	v_lshl_or_b32 v26, v31, 4, v31
	v_lshl_or_b32 v31, v41, 4, v41
	v_lshl_or_b32 v41, s7, 4, v55
	s_lshl_b32 s0, s6, 4
	v_and_b32_e32 v30, 0x60, v0
	v_bfe_i32 v48, v0, 2, 1
	v_and_b32_e32 v74, 0x7060706, v31
	v_subrev_nc_u32_e32 v31, s0, v41
	v_bfe_i32 v41, v0, 1, 1
	v_and_b32_e32 v73, 0x5040504, v26
	v_dual_mov_b32 v93, 0xff800000 :: v_dual_lshlrev_b32 v26, 6, v0
	v_and_b32_e32 v75, 0x160, v52
	v_lshlrev_b32_e32 v30, 4, v30
	v_and_b32_e32 v48, 0x90, v48
	v_and_b32_e32 v41, 0x90, v41
	v_mul_lo_u32 v31, s31, v31
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s2, s3, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v64, 0, v4
	v_xor_b32_e32 v32, 8, v70
	v_and_b32_e32 v26, 0x740, v26
	v_or3_b32 v75, v75, v30, v48
	v_xor_b32_e32 v48, v41, v57
	v_mov_b32_e32 v41, 0
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s2, s30, s2
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s1, s3, 11
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s0, s19, s2
	v_xor_b32_e32 v25, v25, v57
	v_add3_u32 v76, s19, s1, v55
	v_add3_u32 v30, s0, s12, v31
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v80, 0, v32
	v_mov_b32_e32 v32, v41
	v_lshl_add_u32 v28, v29, 6, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v63, 0, v5
	v_add_nc_u32_e32 v65, 0, v3
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_add_nc_u32 v66, 0, v2
	v_add_nc_u32_e32 v67, 0, v1
	.loc	1 903 13                        ; attention.py:903:13
	v_mul_lo_u32 v77, s5, v76
	v_add_lshl_u32 v76, v30, v54, 2
	v_add_nc_u32_e32 v78, v28, v25
	v_add_nc_u32_e32 v86, v28, v27
	v_add_nc_u32_e32 v88, v26, v48
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v30, v41
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v62
	ds_load_b128 v[1:4], v63
	ds_load_b128 v[13:16], v64
	ds_load_b128 v[9:12], v65
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[17:20], v67
	v_mov_b32_e32 v25, 0
	ds_load_b128 v[37:40], v68
	ds_load_b128 v[33:36], v69
	v_xor_b32_e32 v29, 4, v70
	v_xor_b32_e32 v42, 12, v70
	v_xor_b32_e32 v43, 16, v70
	v_xor_b32_e32 v44, 20, v70
	v_xor_b32_e32 v45, 24, v70
	v_xor_b32_e32 v46, 28, v70
	v_xor_b32_e32 v47, 4, v71
	.loc	1 903 13                        ; attention.py:903:13
	v_lshlrev_b32_e32 v31, 3, v54
	v_xor_b32_e32 v89, 16, v75
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_and_b32 v49, 62, v51
	v_sub_nc_u32_e32 v59, 0x800, v55
	v_sub_nc_u32_e32 v60, 0x800, v54
	v_lshl_add_u32 v77, v77, 1, v31
	v_add_nc_u32_e32 v79, 0, v29
	v_add_nc_u32_e32 v81, 0, v42
	v_add_nc_u32_e32 v82, 0, v43
	v_add_nc_u32_e32 v83, 0, v44
	v_add_nc_u32_e32 v84, 0, v45
	v_add_nc_u32_e32 v85, 0, v46
	v_add_nc_u32_e32 v87, 0, v47
	v_add_nc_u32_e32 v89, 0, v89
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v31, v41
	v_mov_b16_e32 v90.h, 0
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s35, s28, 0x3fb8aa3b
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s34, s3, 7
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s40, s5, 5
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s14, v49
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_lt_i32_e64 s0, s19, v59
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s0, s13, s0
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s2, s19, 4
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v42, 0x80000000, v77, s0
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_lt_i32_e64 s0, s19, v60
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s2, s2, s34
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v94, v94, v94
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s2, s2, s14
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b64 v[42:43], v42, s[24:27], 0 offen
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s1, s4, s0
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v44, 0x80000000, v76, s1
	.loc	1 939 32                        ; attention.py:939:32
	s_barrier
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s0, s19, 1
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v77, s40, v77
	s_add_i32 s19, s19, 16
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v103, s0, v72
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v112, 0, v70
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v113, 0, v71
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_lt_i32_e64 s0, s0, v61
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b32 v111, v44, s[28:31], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_dual_mov_b32 v102, v48 :: v_dual_mov_b32 v101, v47
	v_dual_mov_b32 v100, v46 :: v_dual_mov_b32 v99, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v98, v44 :: v_dual_mov_b32 v97, v43
	v_dual_mov_b32 v96, v42 :: v_dual_mov_b32 v95, v41
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[43:44], null, v103, s14, v[49:50]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v69
	ds_load_b128 v[107:110], v68
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v45, s2, v49, 1
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s2, vcc_lo, s0
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v46.h, v90.h
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v42.h, v90.h
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v48, 0x80000000, v43, s2
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v47, 0x80000000, v45, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[33:40], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v67
	ds_load_b128 v[107:110], v66
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[17:24], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v65
	ds_load_b128 v[107:110], v64
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[9:16], v[95:102]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v63
	ds_load_b128 v[107:110], v62
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[95:102], v[103:110], v[1:8], v[95:102]
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v43, 0xff800000, v111, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v43
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b32 v78, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v103, v112
	ds_load_b32 v104, v79
	ds_load_b32 v105, v80
	ds_load_b32 v106, v81
	ds_load_b32 v107, v82
	ds_load_b32 v108, v83
	ds_load_b32 v109, v84
	ds_load_b32 v110, v85
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s1, s1, s2
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v43, 0, 1, s1
	s_barrier
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v91
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s33
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v42.l, v43.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v103, 0x3fb8aa3b, v103
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v86, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v42, v87
	ds_load_u8_d16 v43, v113 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v43, v87 offset:8
	ds_load_u8_d16 v44, v113 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v44, v87 offset:16
	ds_load_u8_d16 v45, v87 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v45, v113 offset:24
	ds_load_u8_d16 v46, v113
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v104, 0x3fb8aa3b, v104 :: v_dual_mul_f32 v105, 0x3fb8aa3b, v105
	v_mul_f32_e32 v108, 0x3fb8aa3b, v108
	v_dual_mul_f32 v106, 0x3fb8aa3b, v106 :: v_dual_mul_f32 v107, 0x3fb8aa3b, v107
	v_dual_mul_f32 v110, 0x3fb8aa3b, v110 :: v_dual_mul_f32 v109, 0x3fb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v104, s35, v96 :: v_dual_fmac_f32 v103, s35, v95
	v_dual_fmac_f32 v106, s35, v98 :: v_dual_fmac_f32 v105, s35, v97
	v_fmac_f32_e32 v108, s35, v100
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v42.l, 1, v42.l
	v_and_b16 v43.l, 1, v43.l
	v_and_b16 v43.h, 1, v43.h
	v_and_b16 v44.l, 1, v44.l
	v_and_b16 v44.h, 1, v44.h
	s_waitcnt lgkmcnt(1)
	v_and_b16 v45.l, 1, v45.l
	v_and_b16 v45.h, 1, v45.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.l, 1, v46.l
	v_cmp_eq_u16_e64 s6, 1, v42.l
	v_cmp_eq_u16_e64 s7, 1, v43.l
	v_cmp_eq_u16_e64 s8, 1, v43.h
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v107, s35, v99 :: v_dual_fmac_f32 v110, s35, v102
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s5, 1, v46.l
	v_cmp_eq_u16_e64 s9, 1, v44.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v109, s35, v101
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s10, 1, v44.h
	v_cmp_eq_u16_e64 s11, 1, v45.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v97, 0xff800000, v103, s5
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s12, 1, v45.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v98, 0xff800000, v104, s6
	v_cndmask_b32_e64 v99, 0xff800000, v105, s7
	v_cndmask_b32_e64 v100, 0xff800000, v106, s8
	v_cndmask_b32_e64 v101, 0xff800000, v107, s9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v102, 0xff800000, v108, s10
	v_cndmask_b32_e64 v104, 0xff800000, v110, s12
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v44, 0, v75
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v103, 0xff800000, v109, s11
	ds_store_b32 v112, v97
	ds_store_b32 v79, v98
	ds_store_b32 v80, v99
	ds_store_b32 v81, v100
	ds_store_b32 v82, v101
	ds_store_b32 v83, v102
	ds_store_b32 v84, v103
	ds_store_b32 v85, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u16 v96, v48, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b32 v95, v47, s[20:23], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v109, v97, v98, v99
	v_max3_f32 v110, v100, v101, v102
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v112, v78
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v111, v103, v104
	v_mov_b32_e32 v105, v93
	v_mov_b32_e32 v43, v92
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v92.h, v90.h
	v_mov_b16_e32 v106.h, v90.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v109, v109, v110, v111
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v93.h, v90.h
	v_mov_b16_e32 v107.h, v90.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v108, v105, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v47.h, v90.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v110, v109, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v48.h, v90.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v45.h, v90.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v111, v91, v109, v110
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v76, 64, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v110, v112 :: v_dual_sub_f32 v109, v91, v111
.Ltmp12:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v98, v98, v111 :: v_dual_max_f32 v113, v112, v112
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v109, v109
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v100, v100, v111
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v110, v110
.Ltmp16:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v100, v100
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v109, 0, v109, s2
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v97, v97, v111
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v113, v91
.Ltmp18:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v99, v99, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v102, v102, v111 :: v_dual_mul_f32 v25, v25, v109
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v109
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v97, v97
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v32, v32, v109 :: v_dual_sub_f32 v101, v101, v111
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v110, v91
.Ltmp20:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v109
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v99, v99
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v103, v103, v111 :: v_dual_mul_f32 v30, v30, v109
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v101, v101
.Ltmp21:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v97, 0, v97, s5
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v104, v104, v111 :: v_dual_mul_f32 v27, v27, v109
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v109
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v103, v103
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v92.l, v97.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v99, 0, v99, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s2, v97, v97
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v101, s9
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v102, v102
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v92, 1, v92
	v_mov_b16_e32 v93.l, v99.h
	v_cmp_o_f32_e64 s9, v99, v99
	v_mov_b16_e32 v106.l, v101.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v109
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v109, v110, v110
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v92, v97, v92, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v103, 0, v103, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v106, 1, v106
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v102, s10
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v91, v109
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v93, 1, v93
	v_mov_b16_e32 v107.l, v103.h
	v_add3_u32 v97, v101, v106, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v92.h, s2
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v92, v91
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v93, v99, v93, 0x7fff
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v101, v101
	v_cmp_o_f32_e64 s11, v103, v103
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v92, v92 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v98, s6
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v104, v104
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cndmask_b16 v109.l, 0x7fff, v97.h, s10
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v100, 0, v100, s8
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v92, v92, v92
.Ltmp32:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v98, v98
	v_cmp_o_f32_e64 s5, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v100, v100
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v91, v92
.Ltmp34:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v107, 1, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v104, 0, v104, s12
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v92, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v99, v103, v107, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v93.h, s9
	v_cmp_o_f32_e64 s6, v104, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v110.l, 0x7fff, v99.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v92, v92, v92
	v_max_f32_e32 v91, v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v94, v94, v91
	v_max_f32_e32 v93, v108, v91
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v91, v112, v94 :: v_dual_sub_f32 v92, v105, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v91, v91
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v91, 0, v91, s1
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v112, 0, v92, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v92, v91
	v_mov_b32_dpp v92, v92 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v91, v92
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v92, v92 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v92, v91
	v_mov_b32_dpp v92, v92 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v91, v92
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v92, v91, v92
.Ltmp49:
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v45.l, v96.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v91, 15, v96
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v47.l, 4, v96.l
	v_lshrrev_b16 v42.l, 12, v96.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b16 v46.l, 8, v96.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v45.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v97, -16, v91
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v48.l, v47.l, 15
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v42, 0, v42, s0
	.loc	1 986 76 is_stmt 0              ; attention.py:986:76
	v_and_b16 v90.l, v46.l, 15
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v96, 0xffff0000, v95
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v91, v91, v97, s1
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v48, 0, v48, s0
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v97, -16, v42
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s0, 7, v42
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v99, -16, v90
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v90.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v101, -16, v48
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v42, v42, v97, s0
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s0, 7, v48
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v99, v90, v99, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v91, v95, v91
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v48, v48, v101, s0
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v97, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v47.l, v91.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v42, v96, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v48
	v_mul_f32_e32 v97, v96, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s0, v91, v91
	v_and_b32_e32 v47, 1, v47
	v_mov_b16_e32 v90.l, v42.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v48, v95, v48
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v46.l, v97.h
	v_cmp_o_f32_e64 s2, v42, v42
	v_add3_u32 v47, v91, v47, 0x7fff
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_dual_fmac_f32 v92, v43, v112 :: v_dual_and_b32 v91, 1, v90
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v45.l, v48.h
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v90.l, v98.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v42, v42, v91, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_and_b32_e32 v45, 1, v45
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v91, 1, v90
	v_mov_b16_e32 v90.l, v100.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v46, v97, v46, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v47.h, s0
	v_add3_u32 v45, v48, v45, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v47, v98, v91, 0x7fff
	v_and_b32_e32 v48, 1, v90
	v_mov_b16_e32 v90.l, v102.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s1
	v_cndmask_b16 v46.h, 0x7fff, v42.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v106.h, 0x7fff, v47.h, s8
	v_and_b32_e32 v47, 1, v90
	v_mov_b16_e32 v90.l, v104.h
	v_add3_u32 v45, v100, v48, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v88, v42, v46 offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v46, 1, v90
	v_cndmask_b16 v107.h, 0x7fff, v45.h, s7
	v_add3_u32 v45, v102, v47, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[95:98], v44
	ds_load_b128 v[99:102], v89
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v42, v106, s41, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v44, v104, v46, 0x7fff
	v_mov_b32_e32 v91, v111
	v_cndmask_b16 v109.h, 0x7fff, v45.h, s5
	v_permlanex16_b32 v45, v107, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v103, v42, v106, v73
	v_cndmask_b16 v110.h, 0x7fff, v44.h, s6
	v_perm_b32 v104, v42, v106, v74
	v_permlanex16_b32 v42, v109, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v105, v45, v107, v73
	v_perm_b32 v106, v45, v107, v74
	v_permlanex16_b32 v44, v110, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v107, v42, v109, v73
	v_perm_b32 v108, v42, v109, v74
	v_perm_b32 v109, v44, v110, v73
	v_perm_b32 v110, v44, v110, v74
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[95:102], v[103:110], v[25:32]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v1, v57
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v93, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v92, v32
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	s_mov_b32 s1, 0x76543210
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp51:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s18, s18, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v2, 0xff800000, v93, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v4, 0, v92, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s14, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v3, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0, v1
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v5, 0, v25, vcc_lo
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v6, v4, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v28, vcc_lo
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
.Ltmp57:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v31 :: v_dual_cndmask_b32 v15, 0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v4, v4, v6 :: v_dual_mov_b32 v7, v5
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v3
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v3, v56, 2, 0
.Ltmp61:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v6, 0, v26, vcc_lo
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s15, s18
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v1, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp65:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v27 :: v_dual_mov_b32 v4, v6
	v_dual_cndmask_b32 v13, 0, v30 :: v_dual_cndmask_b32 v12, 0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v5, v5, v7 :: v_dual_mov_b32 v8, v3
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v6, v4
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v7, v2
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, v1
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v8 :: v_dual_mov_b32 v8, v4
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	v_add_f32_e32 v12, v12, v17
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v16, v2, v7
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v4, v8
	v_add_f32_e32 v2, v5, v6
.Ltmp85:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v1, v9
.Ltmp86:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v1, v16
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v1, v1 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v1, v1 :: v_dual_mov_b32 v9, v3
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v4 :: v_dual_mov_b32 v8, v5
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v2
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v1, v2, v6 :: v_dual_add_f32 v2, v4, v7
.Ltmp98:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v8
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v5, v3, v9 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v4, v2
.Ltmp101:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_max_f32 v8, v16, v10
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v8
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v16, v11
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v18, v13
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_add_f32 v12, v12, v17
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp127:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v5, v6 :: v_dual_add_f32 v12, v2, v4
.Ltmp129:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v53
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v3 :: v_dual_and_b32 v2, 32, v52
.Ltmp131:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v51
	v_lshl_add_u32 v4, v50, 1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_nc_u32 v3, 0, v5
	v_add_f32_e32 v9, v15, v19
.Ltmp133:
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v3, v2, v1
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s14, v5
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
.Ltmp134:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 114
		.amdhsa_next_free_sgpr 42
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
		.amdhsa_inst_pref_size 40
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_vgpr, 114
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5120
; TotalNumSgprs: 44
; NumVgprs: 114
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 114
; Occupancy: 12
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
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
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp41                         ; DW_AT_low_pc
	.long	.Ltmp49-.Ltmp41                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8a:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
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
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
