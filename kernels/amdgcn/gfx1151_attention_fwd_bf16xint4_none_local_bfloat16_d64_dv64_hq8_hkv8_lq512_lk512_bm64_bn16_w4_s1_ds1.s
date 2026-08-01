	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x5c
	s_load_b64 s[24:25], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s4, s3, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s8, v65
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v3, 3, v33
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s22, s8, s4
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x7c
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s13, s[0:1], 0x84
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 0x60, v0
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v66, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v25, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s18, v65
	s_mul_i32 s5, s18, s22
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s9, s18, 4
	s_lshl_b32 s23, s18, 5
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s25, 0xffff
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v2, v3, s5
	s_mul_i32 s5, s18, 48
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v76, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v13, v8 :: v_dual_lshlrev_b32 v2, 1, v1
	v_mov_b32_e32 v7, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v1, s9, 1
	v_add_lshl_u32 v4, v1, s23, 1
	v_add_lshl_u32 v1, v1, s5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v12, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[36:39], v2, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v3, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v4, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v1, s[24:27], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s8, s7
	v_mov_b32_e32 v3, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v52, 1, v34
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s13
	v_mov_b32_e32 v2, v8
	s_add_i32 s2, s2, 64
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v53, 0x70, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, v52, v66
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x200
	v_mov_b32_e32 v4, v8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v52, v35, v53
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s9, s2, 31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s8, v74
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s8, s6
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s9, s9, 28
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s13
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s2, s2, s9
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s12, s8, 0
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v14, v8 :: v_dual_add_nc_u32 v77, 0, v52
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v75, v8
	v_cmp_eq_u32_e64 s5, 0, v76
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s34, s2, -16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v35
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s33, s12, 0x7ffffff0
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v77, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v77, v[40:43] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v77, v[44:47] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v77, v[48:51] offset:6144
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s33, s34
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v33
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v4, 0x70, v0
	v_bfe_i32 v14, v0, 0, 1
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[28:29], s[0:1], 0x28
	v_lshl_or_b32 v78, v66, 7, v2
	v_lshrrev_b32_e32 v4, 2, v4
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v14, 0x90, v14
	v_lshrrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v5, v34, 6, v78
	v_xor_b32_e32 v10, 64, v78
	v_xor_b32_e32 v4, v14, v4
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v14, s4, s33, v65
	v_mov_b32_e32 v65, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s13, v35
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x60, v5, 0
	v_xad_u32 v8, 0x50, v5, 0
	v_xad_u32 v9, v5, 64, 0
	v_mov_b32_e32 v28, v65
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v79, s6, v3
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v80, s7, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x70, v5, 0
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[33:36], v7
	v_xad_u32 v3, v5, 48, 0
	v_xad_u32 v7, v5, 32, 0
	ds_load_b128 v[53:56], v3
	ds_load_b128 v[49:52], v7
	v_mov_b32_e32 v7, 0x7632
	v_mov_b32_e32 v3, 0x5410
	ds_load_b128 v[45:48], v8
	ds_load_b128 v[41:44], v9
	v_xad_u32 v8, v5, 16, 0
	v_dual_mov_b32 v27, v65 :: v_dual_lshlrev_b32 v16, 5, v0
	v_cndmask_b32_e64 v7, 0x3276, v7, s5
	v_cndmask_b32_e64 v3, 0x1054, v3, s5
	v_dual_mov_b32 v18, v65 :: v_dual_add_nc_u32 v5, 0, v5
	v_mov_b32_e32 v30, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v3, v3, 8, v3
	ds_load_b128 v[61:64], v8
	ds_load_b128 v[57:60], v5
	v_dual_mov_b32 v20, v65 :: v_dual_lshlrev_b32 v15, 7, v0
	v_and_b32_e32 v7, 0x760076, v7
	v_dual_mov_b32 v32, v65 :: v_dual_and_b32 v3, 0x540054, v3
	v_bfe_i32 v0, v0, 2, 1
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s1, s3, 5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v3, v3, 4, v3
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s3, s3, 8
	.loc	1 903 13                        ; attention.py:903:13
	s_lshr_b32 s6, s12, 4
	v_add_nc_u32_e32 v89, 0, v10
	v_dual_mov_b32 v29, v65 :: v_dual_and_b32 v82, 0x7060706, v7
	v_dual_mov_b32 v10, v65 :: v_dual_and_b32 v7, 0x160, v16
	v_dual_mov_b32 v22, v65 :: v_dual_and_b32 v81, 0x5040504, v3
	v_dual_mov_b32 v24, v65 :: v_dual_and_b32 v3, 0x700, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v83, 0x90, v0, v7
	s_lshl3_add_u32 s3, s6, s3
	v_dual_mov_b32 v26, v65 :: v_dual_lshlrev_b32 v1, 2, v66
	v_dual_mov_b32 v31, v65 :: v_dual_lshlrev_b32 v0, 3, v66
	v_mul_lo_u32 v7, s18, v14
	v_or_b32_e32 v6, s3, v6
	s_add_i32 s1, s6, s1
	v_xor_b32_e32 v5, 16, v78
	v_xor_b32_e32 v8, 32, v78
	v_xor_b32_e32 v9, 48, v78
	v_xor_b32_e32 v11, 0x50, v78
	v_xor_b32_e32 v12, 0x60, v78
	v_xor_b32_e32 v13, 0x70, v78
	v_add_nc_u32_e32 v3, 0, v3
	s_mul_i32 s1, s19, s1
	v_xor_b32_e32 v14, 16, v83
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s19, v1
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v84, s1, 1, v0
	v_mad_u64_u32 v[0:1], null, s19, v6, v[1:2]
	v_lshl_add_u32 v85, v7, 1, v2
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v86, 0, v5
	v_add_nc_u32_e32 v87, 0, v8
	v_dual_mov_b32 v19, v65 :: v_dual_add_nc_u32 v88, 0, v9
	v_dual_mov_b32 v21, v65 :: v_dual_add_nc_u32 v90, 0, v11
	v_dual_mov_b32 v2, v65 :: v_dual_add_nc_u32 v91, 0, v12
	v_dual_mov_b32 v23, v65 :: v_dual_add_nc_u32 v92, 0, v13
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v94, 0, v14
	v_dual_mov_b32 v11, v65 :: v_dual_mov_b32 v96, 0xff800000
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v93, v3, v4
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v14, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v7, v65
	v_dual_mov_b32 v8, v65 :: v_dual_mov_b32 v75, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v95, 4, v76
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s35, s14, 0x3fb8aa3b
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s18, s19, 1
	s_lshl_b32 s40, s19, 3
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v73, 0x80000000, v85 :: v_dual_mov_b32 v66, v65
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v101, 0, v78
	v_mov_b32_e32 v72, v65
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[97:100], v73, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v106.l, 0
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v85, s23, v85
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v77, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v101
	ds_load_b128 v[101:104], v86
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[97:104], v[57:64], v[66:73]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[97:100], v87
	ds_load_b128 v[101:104], v88
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[97:104], v[49:56], v[66:73]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[97:100], v89
	ds_load_b128 v[101:104], v90
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[97:104], v[41:48], v[66:73]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[97:100], v91
	ds_load_b128 v[101:104], v92
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[97:104], v[33:40], v[66:73]
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v97, s33, v95
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s33, s33, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v66, s35, v66
	.loc	1 951 30                        ; attention.py:951:30
	v_add_nc_u32_e32 v98, 2, v97
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v99, 14, v97
	.loc	1 951 30                        ; attention.py:951:30
	v_add_nc_u32_e32 v100, 12, v97
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v101, 10, v97
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v97, v79
	v_cmp_ge_i32_e64 s1, v98, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v98, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_add_nc_u32_e32 v98, 8, v97
	v_cmp_ge_i32_e64 s4, v99, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v99, v80
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v99, 6, v97
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s8, v97, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_add_nc_u32_e32 v97, 4, v97
	v_cmp_ge_i32_e64 s9, v100, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s10, v100, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v101, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v101, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v98, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v98, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v99, v79
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v99, v80
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s17, v97, v79
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s8, s7, s8
	.loc	1 952 30 is_stmt 0              ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v97, v80
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v67, s35, v67 :: v_dual_mul_f32 v68, s35, v68
	v_dual_mul_f32 v69, s35, v69 :: v_dual_mul_f32 v70, s35, v70
	v_dual_mul_f32 v71, s35, v71 :: v_dual_mul_f32 v72, s35, v72
	v_mul_f32_e32 v73, s35, v73
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s4, s6
	s_and_b32 s4, s9, s10
	s_and_b32 s6, s11, s12
	s_and_b32 s9, s13, s14
	s_and_b32 s10, s15, s16
	s_and_b32 s11, s17, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v66, 0xff800000, v66, s8
	v_cndmask_b32_e64 v67, 0xff800000, v67, s1
	v_cndmask_b32_e64 v72, 0xff800000, v72, s4
	v_cndmask_b32_e64 v73, 0xff800000, v73, s3
	v_cndmask_b32_e64 v70, 0xff800000, v70, s7
	v_cndmask_b32_e64 v71, 0xff800000, v71, s6
	v_cndmask_b32_e64 v68, 0xff800000, v68, s10
	v_cndmask_b32_e64 v69, 0xff800000, v69, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v106.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v97, v72, v73
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v106.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v98, v66, v67, v68
	v_max3_f32 v99, v69, v70, v71
.Ltmp4:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v97, v98, v99, v97
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v98, v97, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v97, v96, v97, v98
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v67, v97
	v_sub_f32_e32 v66, v66, v97
	v_sub_f32_e32 v70, v70, v97
	v_sub_f32_e32 v68, v68, v97
	v_sub_f32_e32 v72, v72, v97
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v72, v72
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v97
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v67, s1
	v_cndmask_b32_e64 v99, 0, v66, s8
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v103, 0, v70, s7
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v70.h, v106.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.l, v98.h
	v_mov_b16_e32 v101.l, v99.h
	v_cmp_o_f32_e64 s1, v98, v98
	v_cmp_o_f32_e64 s8, v99, v99
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v66, 1, v100
	v_and_b32_e32 v67, 1, v101
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v68, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v68.h, v106.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v105, 0, v72, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v66, v98, v66, 0x7fff
	v_add3_u32 v67, v99, v67, 0x7fff
	v_mov_b16_e32 v72.h, v106.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v71, v71, v97
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cndmask_b16 v100.h, 0x7fff, v66.h, s1
	v_cndmask_b16 v100.l, 0x7fff, v67.h, s8
	v_cmp_o_f32_e64 s8, v101, v101
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v67, v100, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v100, v81
	v_perm_b32 v67, v67, v100, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v100, 0, v69, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v69.h, v106.l
	v_mov_b16_e32 v69.l, v101.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v68.l, v100.h
	v_cmp_o_f32_e64 s1, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v69, 1, v69
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v101, v69, 0x7fff
	v_add3_u32 v68, v100, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v102.h, 0x7fff, v68.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v102, s41, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v69, v102, v81
	v_perm_b32 v69, v69, v102, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v71, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v71.h, v106.l
	v_mov_b16_e32 v71.l, v103.h
	v_cmp_o_f32_e64 s6, v103, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v70.l, v102.h
	v_cmp_o_f32_e64 s1, v102, v102
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v71, v103, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v102, v70, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v71.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v104.h, 0x7fff, v70.h, s1
	v_permlanex16_b32 v71, v104, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v70, v71, v104, v81
	v_perm_b32 v71, v71, v104, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v104, 0, v73, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v73.h, v106.l
	v_mov_b16_e32 v73.l, v105.h
	v_cmp_o_f32_e64 s3, v105, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v72.l, v104.h
	v_cmp_o_f32_e64 s1, v104, v104
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v73, v105, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v72, v104, v72, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v73.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v107.h, 0x7fff, v72.h, s1
	v_permlanex16_b32 v73, v107, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v72, v73, v107, v81
	v_perm_b32 v73, v73, v107, v82
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v107, 0x80000000, v0, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v0, s40, v0
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v109, v107, s[36:39], 0 offen
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v106.h, v109.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v107, v109, 0, 8
	v_lshrrev_b32_e32 v108, 8, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v106.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v107.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v107.l, 0, -16, s3
	v_or_b16 v110.l, v106.h, v107.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v106.h, 4, v109.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v106.h, v106.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v107.l, v106.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v111.l, v106.h, v107.l, s1
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v106.h, 4, v108.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v107, v108, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v106.h, v106.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v107.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v107.l, v106.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v112.l, v106.h, v107.l, s1
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v106.h, v108.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v112, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v106.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v107.l, 0, -16, s1
	v_or_b16 v107.l, v106.h, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v107, 0, 16
	v_cvt_f32_i32_e32 v113, v107
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v107, 0x80000000, v84, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v84, s18, v84
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[107:108], v107, s[28:31], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v114, 0xffff0000, v107
	v_mov_b16_e32 v106.h, v107.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v110, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v106.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v112, v114, v112
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s4, v112, v112
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v107, v106, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.l, v107.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v113, v114, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s6, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v107, v107, v110, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v110, v111, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v106.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v110, v106, v110
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v106.h, v109.h, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v110, v110
	v_and_b32_e32 v111, 1, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v110, v110, v111, 0x7fff
	v_mov_b16_e32 v111.h, v106.l
	v_mov_b16_e32 v111.l, v112.h
	v_cndmask_b16 v110.l, 0x7fff, v107.h, s1
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s3
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v106.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v111, v112, v111, 0x7fff
	v_mov_b16_e32 v112.h, v106.l
	v_mov_b16_e32 v112.l, v113.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v107.h, 0x7fff, v111.h, s4
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v111, 24, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v112, 1, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v112, v113, v112, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v112.h, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v111, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v93, v110, v107 offset1:8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v107.h, v108.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v107.l, v109.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v109, 20, v109
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v108, 0xffff0000, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v110, v107, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v107.l, v110.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s1, 0, v107.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v107.l, 0, -16, s3
	v_or_b16 v110.l, v106.h, v107.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v107.l, v112.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v106.h, v109.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v110, v110, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v107.l, v106.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v109.l, v106.h, v107.l, s1
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v106.h, v111.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v109, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v106.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v107.l, 0, -16, s1
	v_or_b16 v112.l, v106.h, v107.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v106.h, 4, v111.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v107.l, v106.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v111.l, v106.h, v107.l, s3
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v107.l, v106.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v106.h, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v110, v107, v110
	v_mul_f32_e32 v107, v107, v109
	v_bfe_i32 v109, v111, 0, 16
	v_bfe_i32 v111, v112, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v107, v107
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v111, v111
	v_mul_f32_e32 v109, v108, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v108, v108, v111
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v106.l
	v_mov_b16_e32 v111.l, v110.h
	v_cmp_o_f32_e64 s6, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v110, v110, v111, 0x7fff
	v_mov_b16_e32 v111.h, v106.l
	v_mov_b16_e32 v111.l, v107.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v107, v107, v111, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v110.h, s1
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v96
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v96, v96, v97
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v106.l
	v_mov_b16_e32 v106.l, v108.h
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v96, v96
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v106, 1, v106
	v_mov_b16_e32 v111.l, v109.h
	v_cmp_o_f32_e64 s4, v109, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v106, v108, v106, 0x7fff
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v114, 0, v96, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v111, 1, v111
	v_cndmask_b16 v108.l, 0x7fff, v106.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v114 :: v_dual_add_nc_u32 v96, 0, v83
	v_mul_f32_e32 v32, v32, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v109, v109, v111, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v114
	v_mul_f32_e32 v26, v26, v114
	v_mul_f32_e32 v28, v28, v114
	v_mul_f32_e32 v29, v29, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v108.h, 0x7fff, v109.h, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v114
	v_mul_f32_e32 v31, v31, v114
	v_mul_f32_e32 v17, v17, v114
	v_mul_f32_e32 v18, v18, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v93, v107, v108 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v94
	ds_load_b128 v[106:109], v96
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v114
	v_mul_f32_e32 v20, v20, v114
	v_mul_f32_e32 v21, v21, v114
	v_mul_f32_e32 v22, v22, v114
	v_mul_f32_e32 v23, v23, v114
	v_mul_f32_e32 v24, v24, v114
	v_mul_f32_e32 v9, v9, v114
	v_mul_f32_e32 v10, v10, v114
	v_mul_f32_e32 v11, v11, v114
	v_mul_f32_e32 v12, v12, v114
	v_mul_f32_e32 v13, v13, v114
	v_mul_f32_e32 v14, v14, v114
	v_mul_f32_e32 v15, v15, v114
	v_mul_f32_e32 v16, v16, v114
	v_mul_f32_e32 v1, v1, v114
	v_mul_f32_e32 v2, v2, v114
	v_mul_f32_e32 v3, v3, v114
	v_mul_f32_e32 v4, v4, v114
	v_mul_f32_e32 v5, v5, v114
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[66:73], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[106:109], v96 offset:512
	ds_load_b128 v[110:113], v94 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v114
	v_mul_f32_e32 v7, v7, v114
	v_mul_f32_e32 v8, v8, v114
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[106:113], v[66:73], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[110:113], v94 offset:1024
	ds_load_b128 v[106:109], v96 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[66:73], v[9:16]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[106:109], v96 offset:1536
	ds_load_b128 v[110:113], v94 offset:1536
	v_mov_b32_e32 v96, v97
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[106:113], v[66:73], v[1:8]
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v66, v99, v98 :: v_dual_add_f32 v67, v101, v100
	v_dual_add_f32 v68, v103, v102 :: v_dual_add_f32 v69, v105, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v66, v66, v67 :: v_dual_add_f32 v67, v68, v69
	v_mov_b32_e32 v68, v75
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v67, v66, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v75, v66, v67
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp11:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v75, v68, v114
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v75, v75, v25
	v_div_scale_f32 v37, null, v75, v75, v26
	v_div_scale_f32 v41, null, v75, v75, v27
	v_rcp_f32_e32 v38, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v75, v75, v28
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v25, v75, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v26, v75, v26
	v_fma_f32 v33, -v36, v38, 1.0
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v27, v75, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v41, v44, 1.0
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s3, v28, v75, v28
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v75, v75, v30
	v_fma_f32 v50, -v36, v47, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v76
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v75, v75, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v75, v75, v29
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v25, v36, v75, v25
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v26, v36, v75, v26
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v30, v75, v30
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v75, v75, v31
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v75, v27
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s4, v29, v75, v29
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v75, v75, v32
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v28, v43, v75, v28
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v75, v75, v17
	v_div_scale_f32 v43, s3, v31, v75, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v36, v37
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v49, -v48, v50, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v44
	v_fma_f32 v39, -v51, v47, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v38, v75, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v17, v75, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v30, v37, v75, v30
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v47, v40
	v_fma_f32 v44, -v42, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v44, v41
	v_fma_f32 v37, -v42, v36, v43
	v_fma_f32 v42, -v52, v39, 1.0
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s6, v32, v75, v32
	v_div_scale_f32 v43, null, v75, v75, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v31, v36, v75, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s3, v18, v75, v18
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s4, v19, v75, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v75, v75, v20
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v75, v75, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v37, v75, v32
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v20, v75, v20
	v_div_fixup_f32 v17, v36, v75, v17
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v75, v75, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v52, v45, v44
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v52, -v49, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v45
	v_fma_f32 v39, -v48, v50, v40
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v37, v46, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v75, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v75, v75, v23
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v75, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s6, v22, v75, v22
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v75, v75, v24
	v_div_fixup_f32 v19, v36, v75, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v37, v75, v20
	v_div_scale_f32 v37, s1, v23, v75, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_dual_mul_f32 v39, v44, v38 :: v_dual_fmac_f32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v39, v44
	v_fmac_f32_e32 v39, v40, v38
	v_rcp_f32_e32 v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v48, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v49, v39, v44
	v_div_scale_f32 v49, null, v75, v75, v10
	v_div_scale_f32 v41, null, v75, v75, v9
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v43, s3, v24, v75, v24
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v21, v36, v75, v21
	v_div_scale_f32 v51, null, v75, v75, v12
	v_div_fixup_f32 v22, v38, v75, v22
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v46, -v45, v39, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v75, v9
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v75, v75, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v75, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v75, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v75, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v11, v75, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v75, v75, v13
	v_div_scale_f32 v39, s3, v12, v75, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v75, v75, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v36, v75, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v75, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v75, v13
	v_div_fixup_f32 v11, v41, v75, v11
	v_div_scale_f32 v41, null, v75, v75, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v14, v75, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v75, v75, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v39, v75, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v75, v75, v2
	v_div_scale_f32 v37, null, v75, v75, v1
	v_div_fixup_f32 v13, v36, v75, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v75, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v75, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v75, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s6, v2, v75, v2
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v38, v75, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v75, v75, v3
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v75, v75, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v75, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v75, v16
	v_div_fixup_f32 v15, v38, v75, v15
	v_div_scale_f32 v47, null, v75, v75, v8
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v75, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v75, v75, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v75, v2
	v_div_scale_f32 v40, null, v75, v75, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s4, v7, v75, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v75, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v75, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s6, v8, v75, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v75, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v75, v75, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v36, v39
	v_mul_f32_e32 v56, v53, v49
	v_mul_f32_e32 v46, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v50, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v46, v41
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s3, v6, v75, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v37, v52, v36
	v_fmac_f32_e32 v55, v50, v44
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v43, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v75, v4
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v36, v75, v5
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s22, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s19, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v38, v75, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v75, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v75, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s3, v28, v28
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s3
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s3, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s3
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s3
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s5
	v_cndmask_b32_e64 v8, v26, v17, s5
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v15, v19, v18, s5
	v_cndmask_b32_e64 v18, v18, v19, s5
	v_cndmask_b32_e64 v19, v12, v9, s5
	v_cndmask_b32_e64 v9, v9, v12, s5
	v_cndmask_b32_e64 v12, 0x1054, v16, s5
	v_cndmask_b32_e64 v16, 0x3276, v17, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b32_e64 v17, v11, v10, s5
	v_cndmask_b32_e64 v10, v10, v11, s5
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s5
	v_cndmask_b32_e64 v13, v20, v29, s5
	v_cndmask_b32_e64 v14, v29, v20, s5
	v_cndmask_b32_e64 v20, v3, v1, s5
	v_cndmask_b32_e64 v1, v1, v3, s5
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v12
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v16, v4, v2, s5
	v_cndmask_b32_e64 v2, v2, v4, s5
	v_permlanex16_b32 v4, v6, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v28, v25, s5
	v_permlanex16_b32 v11, v14, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v18, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v22, v10, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v35
	v_cmp_gt_i32_e64 s4, s19, v0
	v_cmp_gt_i32_e64 s0, s19, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v18
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v18
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v13, v18
	v_perm_b32 v6, v11, v13, v21
	v_perm_b32 v7, v12, v15, v18
	v_perm_b32 v8, v12, v15, v21
	v_perm_b32 v11, v22, v17, v18
	v_perm_b32 v12, v22, v17, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	v_add_lshl_u32 v0, v36, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v14, v19, v18
	v_perm_b32 v13, v23, v20, v18
	v_perm_b32 v15, v24, v16, v18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v17, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v18, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v19, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 115
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 115
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9088
; TotalNumSgprs: 44
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 115
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
	.byte	1                               ; Abbrev [1] 0xb:0x75 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x4f DW_TAG_subprogram
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
	.quad	.Ltmp8                          ; DW_AT_low_pc
	.long	.Ltmp11-.Ltmp8                  ; DW_AT_high_pc
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
