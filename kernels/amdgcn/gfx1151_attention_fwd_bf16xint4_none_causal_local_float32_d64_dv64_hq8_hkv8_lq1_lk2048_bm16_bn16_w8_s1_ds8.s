	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x60
	s_load_b64 s[16:17], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 15, v0
	v_lshrrev_b32_e32 v33, 4, v0
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x40
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v51, 0x70, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_lshlrev_b32_e32 v52, 1, v0
	v_lshlrev_b32_e32 v53, 5, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 2, v54
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s16, v33, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s19
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s7, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s10, s6, s8
	s_cmp_ge_u32 s6, s8
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s8
	s_cselect_b32 s4, s7, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s5
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s11, s19, 0x7f
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s4, s5
	.loc	1 790 61 is_stmt 1              ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s16, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s10, 4
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s13, s11, s19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s5, v33
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s6, s5, s3
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s11, s11
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s6, s6, s16
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s9, s11, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s6, v2, 1
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x7c
	s_load_b32 s12, s[0:1], 0x84
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s14, s9, s8
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s19
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s11, s11, s14
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_ashr_i32 s13, s13, 31
	s_add_i32 s15, s9, 1
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s18, s2, s10
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s11, s8
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b64 v[1:2], v1, s[24:27], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s11, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s9, s15, s9
	s_cselect_b32 s2, s2, s11
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s2, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v3, v3, v51
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s10, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s9, s12, s5
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s9, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s10, s9, s7
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s9, s9, 0x800
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s10, s10, 0x800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s9, s9, 15
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s10, s10, 15
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s13, s9, 31
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s11, s18, s2
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s13, s13, 28
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s12, s6
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s9, s9, s13
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s13, s10, 31
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s9, s9, -16
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s13, s13, 28
	.loc	1 811 18                        ; attention.py:811:18
	v_mov_b32_e32 v4, s9
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s11, s11, 4
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s10, s10, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s5
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s11
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s9, s10, -16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 811 18                        ; attention.py:811:18
	v_min3_i32 v55, s2, s9, v4
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s2, s8, 0x7ffffff0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v56, 0, v3
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s22, s11, s2
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	v_cmp_ge_i32_e32 vcc_lo, s22, v55
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v22, 0x7632 :: v_dual_lshlrev_b32 v35, 4, v0
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s5, v54
	v_and_b32_e32 v11, 16, v0
	s_load_b32 s2, s[0:1], 0x64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v2, 0x70, v35
	v_dual_mov_b32 v21, 0x5410 :: v_dual_add_nc_u32 v36, s12, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v34, 62, v52
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v17, v54, 7, v2
	v_bfe_i32 v42, v0, 2, 1
	v_bfe_i32 v44, v0, 1, 1
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s5, s3, 11
	v_lshlrev_b32_e32 v43, 6, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v20, 48, v17
	v_xor_b32_e32 v2, 0x70, v17
	v_and_b32_e32 v45, 0x160, v53
	v_and_b32_e32 v35, 0x600, v35
	v_and_b32_e32 v42, 0x90, v42
	v_add_nc_u32_e32 v63, 0, v20
	v_dual_cndmask_b32 v20, 0x1054, v21 :: v_dual_add_nc_u32 v59, 0, v2
	v_cndmask_b32_e32 v21, 0x3276, v22, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v57, 1, v33
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v33, s22, s5, v33
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s23, s2, 0x3fb8aa3b
	v_lshl_or_b32 v40, v20, 8, v20
	v_lshl_or_b32 v41, v21, 8, v21
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s2, s3, 7
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v39, 5, v0
	v_and_b32_e32 v44, 0x90, v44
	v_and_b32_e32 v40, 0x540054, v40
	v_and_b32_e32 v41, 0x760076, v41
	v_and_b32_e32 v43, 0x740, v43
	v_or3_b32 v68, v45, v35, v42
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v19, 32, v17
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v41, 4, v41
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v58, s6, v36
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 16, v17
	v_xor_b32_e32 v10, 0x50, v17
	v_and_b32_e32 v67, 0x5040504, v40
	v_and_b32_e32 v69, 0x7060706, v41
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v38, 0xe0, v0
	.loc	1 903 13                        ; attention.py:903:13
	v_and_b32_e32 v40, 31, v0
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v37, s7, v36
	.loc	1 903 13                        ; attention.py:903:13
	s_lshr_b32 s7, s22, 4
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s6, s3, 10
	v_lshrrev_b32_e32 v38, 3, v38
	.loc	1 903 13                        ; attention.py:903:13
	v_lshlrev_b32_e32 v40, 2, v40
	s_add_i32 s7, s7, s2
	s_lshr_b32 s5, s22, 1
	v_mul_lo_u32 v33, s16, v33
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[28:29], s[0:1], 0x28
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, 64, v17
	v_xor_b32_e32 v1, 0x60, v17
	.loc	1 903 13                        ; attention.py:903:13
	s_mul_i32 s2, s17, s7
	v_xor_b32_e32 v35, v44, v38
	v_add3_u32 v39, s5, s6, v39
	v_add_nc_u32_e32 v38, 0, v43
	v_xor_b32_e32 v43, 16, v68
	v_lshl_add_u32 v70, s2, 1, v40
	v_lshlrev_b32_e32 v40, 3, v54
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v64, 0, v19
	v_add_nc_u32_e32 v61, 0, v10
	v_add_nc_u32_e32 v65, 0, v18
	v_add_nc_u32_e32 v60, 0, v1
	v_add_nc_u32_e32 v62, 0, v9
	v_add_nc_u32_e32 v66, 0, v17
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[49:50], null, s17, v39, v[34:35]
	v_lshl_add_u32 v50, v33, 1, v40
	v_add_nc_u32_e32 v73, 0, v43
	v_mov_b32_e32 v39, v41
	v_dual_mov_b32 v40, v41 :: v_dual_mov_b32 v43, 0
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[21:24], v63
	ds_load_b128 v[17:20], v64
	ds_load_b128 v[29:32], v65
	ds_load_b128 v[25:28], v66
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s17, v34
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v72, v38, v35
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[5:8], v59
	ds_load_b128 v[1:4], v60
	v_mov_b32_e32 v34, v41
	v_min_i32_e32 v71, v36, v37
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	ds_load_b128 v[13:16], v61
	ds_load_b128 v[9:12], v62
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b16_e32 v92.h, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s33, s17, 1
	s_lshl_b32 s34, s17, 3
	s_lshl_b32 s35, s16, 5
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v44, 0x80000000, v50, s4
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v48, v41 :: v_dual_mov_b32 v91, v42
	v_mov_b32_e32 v74, v43
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v93, s22, v57
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b64 v[83:84], v44, s[24:27], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v85, 0x80000000, v49, s1
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v86, 0x80000000, v70, s1
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v70, s33, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v82, v48 :: v_dual_mov_b32 v81, v47
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v80, v46 :: v_dual_mov_b32 v79, v45
	v_dual_mov_b32 v78, v44 :: v_dual_mov_b32 v77, v43
	v_dual_mov_b32 v76, v42 :: v_dual_mov_b32 v75, v41
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v93, v58
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s2, v71, v93
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_add_nc_u32_e32 v47, 0, v68
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s22, s22, 16
	v_add_nc_u32_e32 v49, s34, v49
	v_add_nc_u32_e32 v50, s35, v50
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s41, s2, vcc_lo
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[83:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u16 v45, v85, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b32 v46, v86, s[28:31], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[83:86], v66
	ds_load_b128 v[87:90], v65
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v92.h
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[25:32], v[75:82]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[83:86], v64
	ds_load_b128 v[87:90], v63
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[17:24], v[75:82]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[83:86], v62
	ds_load_b128 v[87:90], v61
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[9:16], v[75:82]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[83:86], v60
	ds_load_b128 v[87:90], v59
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[75:82], v[83:90], v[1:8], v[75:82]
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v83, 10, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v43, s23, v76
	v_mul_f32_e32 v76, s23, v80
	.loc	1 949 30                        ; attention.py:949:30
	v_add_nc_u32_e32 v80, 2, v93
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v44, s23, v77
	v_dual_mul_f32 v48, s23, v78 :: v_dual_mul_f32 v77, s23, v81
	v_dual_mul_f32 v78, s23, v82 :: v_dual_add_nc_u32 v81, 14, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s5, v80, v58
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s6, v71, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v83, v58
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s11, v71, v83
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v81, v58
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s8, v71, v81
	.loc	1 952 21 is_stmt 1              ; attention.py:952:21
	s_and_b32 s5, s6, s5
	.loc	1 949 30                        ; attention.py:949:30
	v_add_nc_u32_e32 v82, 12, v93
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v42, s23, v75
	v_mul_f32_e32 v75, s23, v79
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s6, s8, s7
	s_and_b32 s8, s11, vcc_lo
	s_and_b32 vcc_lo, s0, s5
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v82, v58
	.loc	1 967 26                        ; attention.py:967:26
	v_dual_cndmask_b32 v43, 0xff800000, v43 :: v_dual_add_nc_u32 v84, 8, v93
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s10, v71, v82
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v81.h, v92.h
	v_mov_b16_e32 v82.h, v92.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v79.h, v92.h
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v84, v58
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s12, v71, v84
	.loc	1 952 21 is_stmt 1              ; attention.py:952:21
	s_and_b32 s7, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s5, s0, s7
	s_and_b32 s9, s12, s2
	s_and_b32 s2, s0, s6
	s_and_b32 s7, s0, s9
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s5
	v_cndmask_b32_e64 v75, 0xff800000, v75, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v80, 6, v93
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s2
	.loc	1 949 30                        ; attention.py:949:30
	v_add_nc_u32_e32 v85, 4, v93
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s6, s0, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v80, v58
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s15, v71, v80
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s6
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s10, s15, s13
	s_and_b32 s8, s0, s10
	s_and_b32 s10, s0, s41
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s8
	v_cndmask_b32_e64 v80, 0xff800000, v42, s10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v42, v77, v78
.Ltmp2:
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v85, v58
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s16, v71, v85
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v84, v48, v75, v76
.Ltmp4:
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s11, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_and_b32 s9, s0, s11
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v91
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s9
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v83, v80, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v83, v84, v42
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v83, v42, s40, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v42, v91, v42, v83
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v83, v91, v42
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v75, v75, v42
	v_sub_f32_e32 v43, v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v83, v83
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v43, v43
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v77, v77, v42
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v91, 0, v83, s11
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v76, v76, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v75, 0, v75, s7
	v_cndmask_b32_e32 v84, 0, v43, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v48, v48, v42 :: v_dual_mul_f32 v33, v33, v91
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v91
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v76, v76
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v37, v37, v91
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v77, v77
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v36, v36, v91
	v_mul_f32_e32 v39, v39, v91
	v_mul_f32_e32 v38, v38, v91
	v_mul_f32_e32 v40, v40, v91
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v76, 0, v76, s6
	v_cndmask_b32_e64 v48, 0, v48, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v77, 0, v77, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v75, v75
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v86, v75, v76
.Ltmp9:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v80, v80, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v48, v48
	v_cmp_o_f32_e64 s7, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v80, v80
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v80, s10
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v81.l, v43.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v44, v44, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v81, 1, v81
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v44, 0, v44, s9
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v78, v78, v42 :: v_dual_add_f32 v85, v44, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v78, v78
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v82.l, v44.h
	v_cmp_o_f32_e64 s6, v44, v44
	v_and_b32_e32 v82, 1, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v78, 0, v78, s2
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v80, v43, v84
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v43, v43, v81, 0x7fff
	v_mov_b16_e32 v81.h, v92.h
	v_mov_b16_e32 v81.l, v77.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v34, v34, v91
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v80, v80, v85 :: v_dual_add_f32 v85, v77, v78
.Ltmp13:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v44, v44, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v81, 1, v81
	v_cmp_o_f32_e64 s2, v84, v84
	v_cmp_o_f32_e64 s9, v78, v78
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v85, v86, v85
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v86.h, v92.h
	v_mov_b16_e32 v86.l, v75.h
	v_add3_u32 v81, v77, v81, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v43.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v82, v80, v85 :: v_dual_and_b32 v83, 1, v86
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v80.l, 0x7fff, v44.h, s6
	v_add3_u32 v75, v75, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v83.l, 0x7fff, v75.h, s8
	.loc	1 978 32                        ; attention.py:978:32
	v_ashrrev_i16 v43.l, 8, v45.l
	v_bfe_i32 v75, v45, 0, 8
	v_lshrrev_b16 v43.h, 8, v45.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v44.l, 4, v45.l
	v_lshrrev_b16 v44.h, 12, v45.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v43.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v43.l, v45.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v45.l, v75.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v44.l, v44.l, 15
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v43.h, v43.h, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v85, 0xffff0000, v46
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s8, 7, v43.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v45.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v45.l, v44.h, -16
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v45.l, v44.h, v45.l, vcc_lo
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v44.h, 0, -16, s8
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v43.h
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v86, v45, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v75.l, v43.l, v44.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v43.l, v44.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v86, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v75, v75, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v44.l, v44.l, v43.l, s6
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v43.l, 0, -16, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v75, v75
	v_bfe_i32 v44, v44, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v43.l, v43.h, v43.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_i32 v43, v43, 0, 16
	v_mul_f32_e32 v44, v46, v44
	v_mul_f32_e32 v46, v46, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v92.l, v44.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v46.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v86, v85, v86
	v_mul_f32_e32 v43, v85, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v44, v44
	v_and_b32_e32 v75, 1, v92
	v_and_b32_e32 v45, 1, v45
	v_mov_b16_e32 v92.l, v86.h
	v_mov_b16_e32 v79.l, v43.h
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v44, v44, v75, 0x7fff
	v_cmp_o_f32_e64 s11, v43, v43
	v_and_b32_e32 v75, 1, v92
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v92.l, v84.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s8, v46, v46
	v_add3_u32 v45, v46, v45, 0x7fff
	v_and_b32_e32 v46, 1, v79
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v79, 1, v92
	v_mov_b16_e32 v92.l, v48.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s8
	v_add3_u32 v45, v86, v75, 0x7fff
	v_add3_u32 v43, v43, v46, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v46, v84, v79, 0x7fff
	v_and_b32_e32 v75, 1, v92
	v_mov_b16_e32 v92.l, v76.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cndmask_b16 v45.l, 0x7fff, v43.h, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v77.h, 0x7fff, v46.h, s2
	v_add3_u32 v43, v48, v75, 0x7fff
	v_and_b32_e32 v46, 1, v92
	v_mov_b16_e32 v92.l, v78.h
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v72, v44, v45 offset1:8
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v80.h, 0x7fff, v43.h, s5
	v_add3_u32 v44, v76, v46, 0x7fff
	v_and_b32_e32 v45, 1, v92
	v_permlanex16_b32 v43, v77, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	v_cmp_lt_i32_e32 vcc_lo, s22, v55
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v83.h, 0x7fff, v44.h, s7
	v_add3_u32 v44, v78, v45, 0x7fff
	v_permlanex16_b32 v45, v80, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v43, v77, v67
	v_perm_b32 v76, v43, v77, v69
	v_permlanex16_b32 v43, v83, s40, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.l, 0x7fff, v81.h, s10
	v_perm_b32 v77, v45, v80, v67
	v_perm_b32 v78, v45, v80, v69
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s9
	v_perm_b32 v79, v43, v83, v67
	v_perm_b32 v80, v43, v83, v69
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[83:86], v47
	ds_load_b128 v[87:90], v73
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v43, v82, s40, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v45, v44, s40, 0xfedcba98 op_sel:[1,0]
	.loc	1 903 13                        ; attention.py:903:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v82, v43
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v81, v45, v44, v67
	v_perm_b32 v82, v45, v44, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v43, v74, v91
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[83:90], v[75:82], v[33:40]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v43, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s19, s19, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s17, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s18, s19
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v42 :: v_dual_cndmask_b32 v4, 0, v33
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v34 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v43, vcc_lo
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v35
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp26:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_cndmask_b32 v14, 0, v39
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v40
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp30:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp33:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v6, v2, v10
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v6
.Ltmp55:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v2
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v5 :: v_dual_add_f32 v2, v4, v10
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v6, v16
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp65:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v8, v7 :: v_dual_mov_b32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v10, v9
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v20, v15 :: v_dual_add_f32 v13, v13, v18
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v11, v11, v16
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v20, v15 :: v_dual_add_f32 v17, v14, v19
	v_dual_mov_b32 v14, v11 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v12
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp87:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp89:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp91:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v18, v20 :: v_dual_add_f32 v9, v17, v19
	v_dual_add_f32 v14, v11, v14 :: v_dual_lshlrev_b32 v17, 2, v0
	v_dual_add_f32 v8, v13, v16 :: v_dual_add_f32 v7, v12, v15
	v_dual_add_f32 v13, v4, v6 :: v_dual_and_b32 v4, 0xc0, v17
	v_dual_add_f32 v12, v2, v5 :: v_dual_add_f32 v11, v1, v3
.Ltmp93:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v52
	v_and_b32_e32 v2, 32, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v4
	v_lshl_add_u32 v4, v51, 1, 0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 0xc0, v0
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s17, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s21, s21, 0xffff
	v_cmp_eq_u32_e64 s0, 0, v0
	s_mov_b32 s23, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp94:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 94
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_vgpr, 94
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4288
; TotalNumSgprs: 44
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 94
; Occupancy: 16
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
