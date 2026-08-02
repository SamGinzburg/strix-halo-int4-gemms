	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s34, s[0:1], 0x60
	s_load_b64 s[18:19], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v58, 3, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x40
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v52, 1, v0
	v_lshlrev_b32_e32 v17, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v55, 31, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v59, 15, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v53, 0x70, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v7, 0x70, v52
	v_lshlrev_b32_e32 v54, 5, v0
	v_lshrrev_b32_e32 v57, 5, v0
	v_lshlrev_b32_e32 v56, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v7, v17, v7
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s34
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v60, 0, v7
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v3, 3, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[4:5], null, s18, v58, v[3:4]
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s5, s5, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s34
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s28, s5, 31
	s_mul_i32 s7, s4, s8
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s29, s4, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s12, s34, 0x7f
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s29, s28
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s13, s12, s34
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s11, s10, 4
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s12, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s11, v58
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s11, s3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s9, s12, s9
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s4, s4, s18
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s14, s9, s8
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s4, v4, 1
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s34
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s12, s12, s14
	s_ashr_i32 s13, s13, 31
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s5
	.loc	1 798 32                        ; attention.py:798:32
	s_add_i32 s15, s9, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x78
	s_load_b32 s4, s[0:1], 0x80
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s33, s2, s10
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s12, s8
	s_cmp_ge_u32 s12, s8
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[3:6], v3, s[20:23], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s9, s15, s9
	s_cselect_b32 s2, s2, s12
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s13
	s_sub_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s10, s33, s2
	s_lshl_b32 s10, s10, 4
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s9, s7, s4
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s9, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s11
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s9, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x800
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 15
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s10
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s35, s10, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s9, s9, -16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s40, s2, s9
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_ge_i32 s35, s40
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v60, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v19, 4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v61, 1, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s4, v2
	v_and_b32_e32 v41, 0x60, v54
	v_and_b32_e32 v17, 0x180, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v20, v59, 7, v19
	s_clause 0x2
	s_load_b128 s[12:15], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v62, s6, v1
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v63, s7, v1
	v_bfe_i32 v25, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v21, 16, v20
	v_xor_b32_e32 v22, 32, v20
	v_xor_b32_e32 v23, 48, v20
	v_xor_b32_e32 v1, 64, v20
	v_xor_b32_e32 v2, 0x50, v20
	v_xor_b32_e32 v3, 0x60, v20
	v_xor_b32_e32 v4, 0x70, v20
	v_add_nc_u32_e32 v71, 0, v20
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_and_b32 v20, 28, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v68, 0, v23
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s1, s1, 29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshrrev_b32_e32 v42, 1, v20
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_add_nc_u32 v69, 0, v22
	v_lshlrev_b32_e32 v22, 2, v55
	v_and_b32_e32 v23, 0x84, v25
	v_or3_b32 v73, v17, v42, v41
	v_bfe_i32 v17, v0, 4, 1
	v_bfe_u32 v42, v0, 2, 2
	s_add_i32 s1, s3, s1
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s41, s12, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s6, s1, -8
	v_and_b32_e32 v17, 0x84, v17
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	v_xor_b32_e32 v23, v23, v22
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s12, s13, s1
	v_or_b32_e32 v74, v57, v22
	v_or3_b32 v75, v42, v17, v41
	v_dual_mov_b32 v22, 0x5410 :: v_dual_and_b32 v17, 16, v0
	v_dual_mov_b32 v41, 0x7632 :: v_dual_lshlrev_b32 v18, 2, v59
	v_and_b32_e32 v45, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s1, 0, v17
	v_lshlrev_b32_e32 v50, 7, v0
	v_bfe_i32 v51, v0, 2, 1
	v_lshrrev_b32_e32 v80, 2, v53
	v_lshrrev_b32_e32 v48, 3, v45
	v_cndmask_b32_e64 v17, 0x1054, v22, s1
	v_cndmask_b32_e64 v41, 0x3276, v41, s1
	v_and_b32_e32 v81, 0x160, v54
	v_lshlrev_b32_e32 v45, 4, v45
	v_and_b32_e32 v51, 0x90, v51
	v_lshl_or_b32 v17, v17, 8, v17
	v_lshl_or_b32 v41, v41, 8, v41
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s1, s28, 4
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v24, 4, v53
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s2, s3, 11
	v_and_b32_e32 v17, 0x540054, v17
	v_and_b32_e32 v41, 0x760076, v41
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s4, s3, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s6, s3, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v64, 0, v4
	v_lshl_or_b32 v17, v17, 4, v17
	v_lshl_or_b32 v41, v41, 4, v41
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s6, s14, s6
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s7, s3, 7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v66, 0, v2
	v_and_b32_e32 v78, 0x5040504, v17
	v_bfe_i32 v17, v0, 0, 1
	v_and_b32_e32 v79, 0x7060706, v41
	v_and_b32_e32 v41, 0x700, v50
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v50, s29, 4, v58
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_add_nc_u32 v67, 0, v1
	v_and_b32_e32 v17, 0x90, v17
	v_lshl_or_b32 v76, v55, 5, v20
	v_xor_b32_e32 v77, v56, v48
	v_xor_b32_e32 v43, 8, v73
	v_xor_b32_e32 v44, 12, v73
	v_xor_b32_e32 v17, v17, v80
	v_or3_b32 v80, v81, v45, v51
	v_add_nc_u32_e32 v45, 0, v41
	v_subrev_nc_u32_e32 v41, s1, v50
	v_add3_u32 v51, s35, s2, v58
	s_lshr_b32 s2, s35, 1
	s_lshr_b32 s1, s35, 4
	v_add3_u32 v24, s2, s4, v24
	v_mul_lo_u32 v41, s15, v41
	s_add_i32 s2, s35, s12
	v_mul_lo_u32 v83, s18, v51
	v_lshlrev_b32_e32 v50, 3, v59
	s_add_i32 s1, s1, s7
	v_add_nc_u32_e32 v98, v45, v17
	s_mul_i32 s1, s19, s1
	v_mov_b32_e32 v17, 0
	v_add3_u32 v41, s6, s2, v41
	v_lshl_add_u32 v81, s1, 1, v50
	v_mad_u64_u32 v[50:51], null, s19, v24, v[18:19]
	v_lshl_add_u32 v83, v83, 1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v82, v41, v61, 1
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v70, 0, v21
	v_lshrrev_b32_e32 v21, 4, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v65, 0, v3
	ds_load_b128 v[13:16], v66
	ds_load_b128 v[9:12], v67
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v24, v41
	v_and_or_b32 v72, v21, 2, v23
	v_xor_b32_e32 v23, 4, v73
	ds_load_b128 v[5:8], v64
	ds_load_b128 v[1:4], v65
	v_xor_b32_e32 v20, 0x84, v74
	v_xor_b32_e32 v42, 4, v75
	v_xor_b32_e32 v21, 0x108, v72
	v_add_nc_u32_e32 v85, 0, v23
	v_mov_b32_e32 v23, v41
	ds_load_b128 v[29:32], v68
	ds_load_b128 v[25:28], v69
	ds_load_b128 v[37:40], v70
	ds_load_b128 v[33:36], v71
	v_xor_b32_e32 v22, 4, v76
	v_xor_b32_e32 v46, 8, v76
	v_xor_b32_e32 v47, 12, v76
	v_xor_b32_e32 v49, 16, v76
	v_xor_b32_e32 v94, 20, v76
	v_xor_b32_e32 v48, 24, v76
	v_xor_b32_e32 v96, 28, v76
	v_xor_b32_e32 v97, 0x210, v77
	v_xor_b32_e32 v99, 16, v80
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s19, v18
	v_add_nc_u32_e32 v84, 0, v21
	v_add_nc_u32_e32 v86, 0, v43
	v_add_nc_u32_e32 v87, 0, v44
	v_add_nc_u32_e32 v88, 0, v20
	v_add_nc_u32_e32 v89, 0, v42
	v_add_nc_u32_e32 v90, 0, v22
	v_add_nc_u32_e32 v91, 0, v46
	v_add_nc_u32_e32 v92, 0, v47
	v_add_nc_u32_e32 v93, 0, v49
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v48
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v97, 0, v97
	v_dual_mov_b32 v18, v41 :: v_dual_add_nc_u32 v99, 0, v99
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v100, 2, v82
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s13, s19, 1
	s_lshl_b32 s14, s19, 3
	s_lshl_b32 s15, s18, 5
	s_mov_b32 s18, 0x76543210
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s28, s26
	s_mov_b32 s29, s27
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s10
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v42, 0x80000000, v83, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v83, s15, v83
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[42:45], v42, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v103, s35, v61
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s35, s35, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v103, v62
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s2, v103, v63
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v103, 1, v103
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s1, s2
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s4, v103, v62
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v103, v63
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s5, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_cndmask_b32_e64 v103, 0x80000000, v82, s1
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v82, 32, v82
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s2, s4, s6
	s_and_b32 s2, s5, s2
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v60, v[42:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v71
	ds_load_b128 v[109:112], v70
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_u16 v103, v103, s[28:31], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[105:112], v[33:40], v[42:49]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v69
	ds_load_b128 v[109:112], v68
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[105:112], v[25:32], v[42:49]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v67
	ds_load_b128 v[109:112], v66
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[105:112], v[9:16], v[42:49]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[105:108], v65
	ds_load_b128 v[109:112], v64
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[105:112], v[1:8], v[42:49]
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v105, 0x80000000, v100, s2
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v106, 0, v73
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v100, 32, v100
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_u16 v105, v105, s[28:31], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v105.h, 0xff80, v103.l, s1
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v103, 0, v72
	ds_store_b16_d16_hi v103, v105
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b16 v103.h, 0xff80, v105.l, s2
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v105.l, 0
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b16_d16_hi v84, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v108, v85
	ds_load_u16 v109, v86
	ds_load_u16 v110, v87
	ds_load_u16 v113, v87 offset:16
	ds_load_u16 v112, v86 offset:16
	ds_load_u16 v111, v85 offset:16
	ds_load_u16 v107, v106
	ds_load_u16 v106, v106 offset:16
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v105
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v103.l, v105.l
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s1, s1, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v103
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s4, s2, s4
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s35, s40
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v108, 0x3fb8aa3b, v108 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v109, 0x3fb8aa3b, v109 :: v_dual_mul_f32 v110, 0x3fb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v107, 0x3fb8aa3b, v107
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v108, s41, v43 :: v_dual_add_nc_u32 v43, 0, v74
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v106, 0x3fb8aa3b, v106 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v107, s41, v42
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_cndmask_b32_e64 v42, 0, 1, s1
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v109, s41, v44 :: v_dual_fmac_f32 v110, s41, v45
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	ds_store_b8 v43, v42
	v_cndmask_b32_e64 v42, 0, 1, s4
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v106, s41, v46 :: v_dual_add_nc_u32 v43, 0, v75
	v_dual_fmac_f32 v111, s41, v47 :: v_dual_fmac_f32 v112, s41, v48
	v_fmac_f32_e32 v113, s41, v49
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v88, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v42, v89
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v46.h, v105.l
	v_mov_b16_e32 v47.h, v105.l
	v_mov_b16_e32 v48.h, v105.l
	v_mov_b16_e32 v49.h, v105.l
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s2, 1, v42.l
	ds_load_u8_d16 v42, v43 offset:8
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s6, 1, v42.l
	ds_load_u8_d16 v42, v89 offset:8
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s7, 1, v42.l
	ds_load_u8_d16 v42, v43 offset:16
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s8, 1, v42.l
	ds_load_u8_d16 v42, v89 offset:16
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v106, 0xff800000, v106, s8
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s9, 1, v42.l
	ds_load_u8_d16 v42, v43 offset:24
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s10, 1, v42.l
	ds_load_u8_d16 v42, v43
	s_waitcnt lgkmcnt(0)
	v_and_b16 v42.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s11, 1, v42.l
	ds_load_u8_d16 v42, v89 offset:24
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s12, 1, v42.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v42, 0xff800000, v107, s11
	v_cndmask_b32_e64 v107, 0xff800000, v108, s2
	v_cndmask_b32_e64 v108, 0xff800000, v109, s6
	v_cndmask_b32_e64 v109, 0xff800000, v110, s7
	v_cndmask_b32_e64 v110, 0xff800000, v111, s9
	v_cndmask_b32_e64 v111, 0xff800000, v112, s10
	v_cndmask_b32_e64 v112, 0xff800000, v113, s12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v43, v42, v107, v108
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.h, v105.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v44, v109, v106, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v45, v111, v112
	v_max3_f32 v43, v43, v44, v45
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v44, 0, v76
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v45.h, v105.l
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v44, v42
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v44, v43, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v90, v107
	ds_store_b32 v91, v108
	ds_store_b32 v92, v109
	ds_store_b32 v93, v106
	ds_store_b32 v94, v110
	ds_store_b32 v95, v111
	ds_store_b32 v96, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v103, v104, v43, v44
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v44.h, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v107, v103
	v_sub_f32_e32 v42, v42, v103
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v42, v42
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v42, 0, v42, s11
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v43, v43
	v_cmp_o_f32_e64 s11, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v43, v43, v44, 0x7fff
	v_mov_b16_e32 v44.h, v105.l
	v_mov_b16_e32 v44.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s2
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v44, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v44, v43, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v44, v43, v78
	v_perm_b32 v43, v44, v43, v79
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v44, v109, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v44, 0, v44, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v45.l, v44.h
	v_cmp_o_f32_e64 s2, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v44, v44, v45, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v45, v108, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v46.l, v45.h
	v_cmp_o_f32_e64 s6, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v45, v45, v46, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v44.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s6
	v_permlanex16_b32 v45, v46, s18, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v44, v45, v46, v78
	v_perm_b32 v45, v45, v46, v79
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v46, v110, v103
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v46, 0, v46, s9
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v47.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v46, v46
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v47, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v47, v106, v103
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v106, 0x80000000, v50, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v50, s14, v50
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v47, v47
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v108, v106, s[36:39], 0 offen
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v47, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s6, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v47, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v46.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s6
	v_permlanex16_b32 v47, v48, s18, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v46, v47, v48, v78
	v_perm_b32 v47, v47, v48, v79
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v48, v112, v103
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v48, 0, v48, s12
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v49.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v48, v48
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v48, v48, v49, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v49, v111, v103
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v49, 0, v49, s10
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v113.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v49, v49
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v49, v113, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v48.h, s2
	v_cndmask_b16 v113.l, 0x7fff, v49.h, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v113, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v48, v49, v113, v78
	v_perm_b32 v49, v49, v113, v79
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v105.h, v108.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v106, v108, 0, 8
	v_lshrrev_b32_e32 v107, 8, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v105.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v106.l, 0, -16, s6
	v_or_b16 v109.l, v105.h, v106.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v105.h, 4, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v105.h, v105.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v106.l, v105.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v110.l, v105.h, v106.l, s2
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v105.h, 4, v107.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v106, v107, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v105.h, v105.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v106.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v106.l, v105.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v111.l, v105.h, v106.l, s2
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v105.h, v107.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v111, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v105.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v111, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v106.l, 0, -16, s2
	v_or_b16 v106.l, v105.h, v106.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v106, v106, 0, 16
	v_cvt_f32_i32_e32 v112, v106
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v106, 0x80000000, v81, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v81, s13, v81
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[106:107], v106, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v113, 0xffff0000, v106
	v_mov_b16_e32 v105.h, v106.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v106, v109, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v111, v113, v111
	v_mul_f32_e32 v112, v113, v112
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v111, v111
	v_cmp_o_f32_e64 s8, v112, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v106, v105, v106
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v106.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v106, v106
	v_and_b32_e32 v109, 1, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v106, v106, v109, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v110, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v109, v105, v109
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v105.h, v108.h, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.l, v109.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s6, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v110.l, v111.h
	v_cndmask_b16 v109.l, 0x7fff, v106.h, s2
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s6
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v110, v111, v110, 0x7fff
	v_mov_b16_e32 v111.h, v105.l
	v_mov_b16_e32 v111.l, v112.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v106.h, 0x7fff, v110.h, s7
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v110, 0, v77
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v111, 1, v111
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v111, v112, v111, 0x7fff
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v112, v110
	ds_load_b32 v113, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v110, 24, v108
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v106.l, 0x7fff, v111.h, s8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v111, v110, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v98, v109, v106 offset1:8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v106.h, v107.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v106.l, v108.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v108, 20, v108
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v107, 0xffff0000, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v109, v106, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v106.l, v109.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s2, 0, v106.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v106.l, 0, -16, s6
	v_or_b16 v109.l, v105.h, v106.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v106.l, v111.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v105.h, v108.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v109, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v106.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v106.l, v105.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v108.l, v105.h, v106.l, s2
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v105.h, v110.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v108, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v105.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v106.l, 0, -16, s2
	v_or_b16 v111.l, v105.h, v106.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v105.h, 4, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v106.l, v105.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v110.l, v105.h, v106.l, s6
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v106.l, v105.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v105.h, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v109, v106, v109
	v_mul_f32_e32 v106, v106, v108
	v_bfe_i32 v108, v110, 0, 16
	v_bfe_i32 v110, v111, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s2, v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s6, v106, v106
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v108, v107, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v107, v107, v110
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v110.l, v109.h
	v_cmp_o_f32_e64 s7, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v110.l, v106.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v106, v106, v110, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v109.h, s2
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v104
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v104, v104, v103
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v105.l
	v_mov_b16_e32 v110.l, v108.h
	v_cndmask_b16 v106.h, 0x7fff, v106.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v104, v104
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v104, 0, v104, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v23, v23, v104 :: v_dual_and_b32 v110, 1, v110
	v_mul_f32_e32 v22, v22, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v105.l, v107.h
	v_add3_u32 v108, v108, v110, 0x7fff
	v_cmp_o_f32_e64 s8, v107, v107
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v104
	v_mul_f32_e32 v17, v17, v104
	v_dual_mul_f32 v18, v18, v104 :: v_dual_and_b32 v105, 1, v105
	v_mul_f32_e32 v19, v19, v104
	v_mul_f32_e32 v20, v20, v104
	v_mul_f32_e32 v21, v21, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v105, v107, v105, 0x7fff
	v_cndmask_b16 v107.h, 0x7fff, v108.h, s7
	v_add_nc_u32_e32 v104, 0, v80
	v_cndmask_b16 v107.l, 0x7fff, v105.h, s8
	ds_store_2addr_b32 v98, v106, v107 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[104:107], v104
	ds_load_b128 v[108:111], v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[104:111], v[42:49], v[17:24]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v42, v113, v113 :: v_dual_max_f32 v43, v112, v112
	v_mov_b32_e32 v44, v102
	v_mov_b32_e32 v104, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v43, v42
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v42, v43
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v42, v43
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v101, v101
.Ltmp14:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v101, v43, v42
	v_max_f32_e32 v43, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v102, v43, v42
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v42, v112, v101
	v_sub_f32_e32 v43, v113, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v42, s1
	v_cndmask_b32_e64 v43, 0, v43, s4
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_mov_b32 v43, v51
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v51, v42, v45 :: v_dual_sub_f32 v42, v44, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp22:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v42, v42
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v42, 0, v42, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v51, v43, v42
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v24, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_mov_b32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v51, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
	s_mov_b32 s1, 0x76543210
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp24:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v102 :: v_dual_and_b32 v4, 12, v56
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v51, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s19, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp27:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v7, 0, v17 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp29:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v18, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v14, 0, v23 :: v_dual_max_f32 v1, v1, v2
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v2, 12, v58
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp33:
	.loc	1 1025 31 is_stmt 1             ; attention.py:1025:31
	s_add_i32 s1, s33, s34
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v5 :: v_dual_add_nc_u32 v2, 0, v2
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v7
.Ltmp37:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v9, 0, v19, vcc_lo
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp43:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v6, v5
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v8, v11 :: v_dual_add_f32 v4, v9, v12
.Ltmp52:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v11, 0, v20, vcc_lo
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_mov_b32 v8, v4
.Ltmp56:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v21, vcc_lo
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_mov_b32 v15, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v16, v4
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_mov_b32 v9, v5
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v7, v2 :: v_dual_max_f32 v8, v1, v6
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v2, v7 :: v_dual_add_f32 v2, v3, v10
.Ltmp70:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v5, v9
	v_add_f32_e32 v5, v4, v16
.Ltmp71:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v16, 0, v24 :: v_dual_mov_b32 v19, v14
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v3, v1
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
.Ltmp75:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v16, v20 :: v_dual_add_f32 v13, v13, v18
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v20
	v_add_f32_e32 v18, v13, v18
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v19, v14, v19
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v18
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v12, v17
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v15 :: v_dual_add_f32 v14, v18, v14
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v20, v19 :: v_dual_mov_b32 v13, v17
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v17, v13
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v21, v16
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v21
	v_dual_add_f32 v15, v19, v20 :: v_dual_mov_b32 v16, v13
.Ltmp97:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v57, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v17 :: v_dual_mov_b32 v19, v15
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp101:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp103:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp105:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v14, v18 :: v_dual_add_f32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v5, v6
.Ltmp107:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v56
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v2, v4 :: v_dual_add_f32 v11, v1, v3
.Ltmp109:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v52
	v_and_b32_e32 v2, 32, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v5
	v_lshl_add_u32 v4, v53, 1, 0
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp111:
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v5, 63, v0
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
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
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
.Ltmp112:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
		.amdhsa_inst_pref_size 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_vgpr, 114
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6128
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
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp15                         ; DW_AT_low_pc
	.long	.Ltmp22-.Ltmp15                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w4_s1_ds8.kd
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
