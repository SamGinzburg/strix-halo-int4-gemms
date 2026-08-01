	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x5c
	s_load_b64 s[24:25], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s10, s3, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v65
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v3, 3, v33
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s18, s4, s10
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s26, 0x7ffffffe
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x84
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 0x60, v0
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v66, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v26, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s16, v65
	s_mul_i32 s5, s16, s18
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s16, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s16, 4
	s_lshl_b32 s19, s16, 5
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s25, 0xffff
	v_lshlrev_b32_e32 v25, 4, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v2, v3, s5
	s_mul_i32 s5, s16, 48
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v77, 4, v0
	v_bfe_u32 v74, v0, 4, 1
	v_mov_b32_e32 v16, v8
	v_dual_mov_b32 v7, v8 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v1, s6, 1
	v_add_lshl_u32 v4, v1, s19, 1
	v_add_lshl_u32 v1, v1, s5, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v14, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[36:39], v2, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v3, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v4, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v1, s[24:27], 0 offen
	v_mov_b32_e32 v3, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 1, v34
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s2, s4, s8
	v_mov_b32_e32 v1, v8
	s_add_i32 s2, s2, s12
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v26, 0x70, v26
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v75, v35, v66
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s11, s2, 0
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v2, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v52, v25, v26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s4, v75
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s12, s4
	v_mov_b32_e32 v13, v8
	s_add_i32 s4, s4, 64
	v_mov_b32_e32 v12, v8
	s_add_i32 s2, s4, s9
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x200
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x200
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s4, s4, 15
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s5, s4, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s6, s2, 31
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s5, s5, 28
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s6, s6, 28
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s4, s4, s5
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s2, s2, s6
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s4, s4, -16
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
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
	v_mov_b32_e32 v76, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v78, 0, v52
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s23, s2, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v35
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s22, s11, 0x7ffffff0
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v78, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v78, v[40:43] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v78, v[44:47] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[48:51] offset:6144
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s22, s23
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v2, 4, v33
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v5, 0x70, v0
	v_bfe_i32 v15, v0, 0, 1
	v_lshlrev_b32_e32 v16, 7, v0
	s_load_b32 s13, s[0:1], 0x64
	v_lshl_or_b32 v79, v66, 7, v2
	v_lshrrev_b32_e32 v5, 2, v5
	v_and_b32_e32 v15, 0x90, v15
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[28:29], s[0:1], 0x28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v1, 2, v66
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v4, v34, 6, v79
	v_xor_b32_e32 v11, 64, v79
	v_xor_b32_e32 v5, v15, v5
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v15, s10, s22, v65
	v_mov_b32_e32 v65, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x70, v4, 0
	v_xad_u32 v9, 0x50, v4, 0
	v_xad_u32 v8, 0x60, v4, 0
	v_xad_u32 v10, v4, 64, 0
	v_dual_mov_b32 v26, v65 :: v_dual_add_nc_u32 v3, s12, v35
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[33:36], v8
	v_xad_u32 v7, v4, 48, 0
	ds_load_b128 v[45:48], v9
	ds_load_b128 v[41:44], v10
	v_dual_mov_b32 v30, v65 :: v_dual_and_b32 v9, 16, v0
	v_xad_u32 v8, v4, 32, 0
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[49:52], v8
	v_xad_u32 v7, v4, 16, 0
	v_mov_b32_e32 v8, 0x5410
	v_cmp_eq_u32_e64 s1, 0, v9
	v_dual_mov_b32 v9, 0x7632 :: v_dual_add_nc_u32 v4, 0, v4
	v_mov_b32_e32 v27, v65
	ds_load_b128 v[61:64], v7
	ds_load_b128 v[57:60], v4
	v_cndmask_b32_e64 v7, 0x1054, v8, s1
	v_cndmask_b32_e64 v8, 0x3276, v9, s1
	v_dual_mov_b32 v20, v65 :: v_dual_lshlrev_b32 v17, 5, v0
	v_mov_b32_e32 v29, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v8, 8, v8
	v_bfe_i32 v0, v0, 2, 1
	v_mov_b32_e32 v32, v65
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s12, s3, 5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	.loc	1 976 30                        ; attention.py:976:30
	s_lshl_b32 s3, s3, 8
	.loc	1 903 13                        ; attention.py:903:13
	s_lshr_b32 s1, s11, 4
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v80, s8, v3
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s8, s1, s12
	s_lshl3_add_u32 s1, s1, s3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v6, s9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v31, v65 :: v_dual_and_b32 v82, 0x7060706, v8
	v_and_b32_e32 v8, 0x160, v17
	v_mov_b32_e32 v17, 0
	v_dual_mov_b32 v22, v65 :: v_dual_and_b32 v81, 0x5040504, v7
	v_dual_mov_b32 v24, v65 :: v_dual_and_b32 v7, 0x700, v16
	v_and_or_b32 v83, 0x90, v0, v8
	v_dual_mov_b32 v19, v65 :: v_dual_lshlrev_b32 v0, 3, v66
	v_mul_lo_u32 v8, s16, v15
	v_or_b32_e32 v15, s1, v77
	v_xor_b32_e32 v4, 16, v79
	v_xor_b32_e32 v9, 32, v79
	v_xor_b32_e32 v10, 48, v79
	v_xor_b32_e32 v12, 0x50, v79
	v_xor_b32_e32 v13, 0x60, v79
	v_xor_b32_e32 v14, 0x70, v79
	v_add_nc_u32_e32 v7, 0, v7
	s_mul_i32 s8, s17, s8
	v_xor_b32_e32 v16, 16, v83
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s17, v1
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v84, s8, 1, v0
	v_mad_u64_u32 v[0:1], null, s17, v15, v[1:2]
	v_lshl_add_u32 v85, v8, 1, v2
	v_dual_mov_b32 v21, v65 :: v_dual_add_nc_u32 v86, 0, v4
	v_add_nc_u32_e32 v87, 0, v9
	v_dual_mov_b32 v23, v65 :: v_dual_add_nc_u32 v88, 0, v10
	v_add_nc_u32_e32 v89, 0, v11
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v90, 0, v12
	v_add_nc_u32_e32 v91, 0, v13
	v_dual_mov_b32 v11, v65 :: v_dual_add_nc_u32 v92, 0, v14
	v_min_i32_e32 v93, v3, v6
	v_dual_mov_b32 v2, v65 :: v_dual_add_nc_u32 v95, 0, v16
	v_mov_b32_e32 v28, v65
	v_mov_b32_e32 v18, v65
	v_mov_b32_e32 v10, v65
	v_dual_mov_b32 v13, v65 :: v_dual_add_nc_u32 v94, v7, v5
	v_mov_b32_e32 v12, v65
	v_mov_b32_e32 v14, v65
	v_dual_mov_b32 v15, v65 :: v_dual_mov_b32 v96, 0xff800000
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v4, v65
	v_dual_mov_b32 v3, v65 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s33, s13, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s34, s17, 1
	s_lshl_b32 s35, s17, 3
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s40, 0x76543210
	s_mov_b32 s36, s6
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v73, 0x80000000, v85 :: v_dual_mov_b32 v66, v65
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v101, 0, v79
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
	v_add_nc_u32_e32 v85, s19, v85
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[97:100]
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
	v_add_nc_u32_e32 v97, s22, v74
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s22, s22, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v66, s33, v66
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v98, 14, v97
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v99, 12, v97
	v_add_nc_u32_e32 v100, 10, v97
	v_add_nc_u32_e32 v101, 8, v97
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s6, v97, v80
	v_cmp_ge_i32_e64 s1, v98, v80
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s3, v93, v98
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_add_nc_u32_e32 v98, 6, v97
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s4, v99, v80
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s5, v93, v99
	.loc	1 904 31 is_stmt 1              ; attention.py:904:31
	v_add_nc_u32_e32 v99, 4, v97
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s7, v93, v97
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v97, 2, v97
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v100, v80
	.loc	1 951 21 is_stmt 0              ; attention.py:951:21
	v_cmp_ge_i32_e64 s9, v93, v100
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v101, v80
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s11, v93, v101
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v98, v80
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s13, v93, v98
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v99, v80
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s15, v93, v99
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v97, v80
	.loc	1 952 21 is_stmt 1              ; attention.py:952:21
	s_and_b32 s7, s7, s6
	.loc	1 951 21                        ; attention.py:951:21
	v_cmp_ge_i32_e64 s6, v93, v97
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v67, s33, v67 :: v_dual_mul_f32 v68, s33, v68
	v_dual_mul_f32 v69, s33, v69 :: v_dual_mul_f32 v70, s33, v70
	v_dual_mul_f32 v71, s33, v71 :: v_dual_mul_f32 v72, s33, v72
	v_mul_f32_e32 v73, s33, v73
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s3, s1
	s_and_b32 s41, s5, s4
	s_and_b32 s3, s9, s8
	s_and_b32 s4, s11, s10
	s_and_b32 s5, s13, s12
	s_and_b32 s8, s15, s14
	s_and_b32 s9, s6, s16
	s_and_b32 s7, s2, s7
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s8
	s_and_b32 s8, s2, s41
	s_and_b32 s9, s2, s9
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v72, 0xff800000, v72, s8
	v_cndmask_b32_e64 v73, 0xff800000, v73, s1
	v_cndmask_b32_e64 v70, 0xff800000, v70, s4
	v_cndmask_b32_e64 v71, 0xff800000, v71, s3
	v_cndmask_b32_e64 v68, 0xff800000, v68, s6
	v_cndmask_b32_e64 v69, 0xff800000, v69, s5
	v_cndmask_b32_e64 v66, 0xff800000, v66, s7
	v_cndmask_b32_e64 v67, 0xff800000, v67, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v106.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v97, v72, v73
	v_max3_f32 v98, v69, v70, v71
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v106.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v99, v66, v67, v68
.Ltmp4:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s22, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v97, v99, v98, v97
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v98, v97, s40, 0xfedcba98 op_sel:[1,0]
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
	v_cndmask_b32_e64 v98, 0, v67, s9
	v_cndmask_b32_e64 v99, 0, v66, s7
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v103, 0, v70, s4
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v70.h, v106.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.l, v98.h
	v_mov_b16_e32 v101.l, v99.h
	v_cmp_o_f32_e64 s7, v98, v98
	v_cmp_o_f32_e64 s9, v99, v99
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v66, 1, v100
	v_and_b32_e32 v67, 1, v101
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v68, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v68.h, v106.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v105, 0, v72, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v66, v98, v66, 0x7fff
	v_add3_u32 v67, v99, v67, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_mov_b16_e32 v72.h, v106.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v71, v71, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v100.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v100.l, 0x7fff, v67.h, s9
	v_cmp_o_f32_e64 s4, v103, v103
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v67, v100, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v100, v81
	v_perm_b32 v67, v67, v100, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v100, 0, v69, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v69.h, v106.l
	v_mov_b16_e32 v69.l, v101.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v68.l, v100.h
	v_cmp_o_f32_e64 s5, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v69, 1, v69
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v101, v69, 0x7fff
	v_add3_u32 v68, v100, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v69.h, s6
	v_cndmask_b16 v102.h, 0x7fff, v68.h, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v102, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v69, v102, v81
	v_perm_b32 v69, v69, v102, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v71, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v71.h, v106.l
	v_mov_b16_e32 v71.l, v103.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v70.l, v102.h
	v_cmp_o_f32_e64 s3, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v71, 1, v71
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v71, v103, v71, 0x7fff
	v_add3_u32 v70, v102, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v71.h, s4
	v_cndmask_b16 v104.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v104, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v104, v81
	v_perm_b32 v71, v71, v104, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v104, 0, v73, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v73.h, v106.l
	v_mov_b16_e32 v73.l, v105.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v72.l, v104.h
	v_cmp_o_f32_e64 s1, v104, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v105, v73, 0x7fff
	v_add3_u32 v72, v104, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v107.l, 0x7fff, v73.h, s3
	v_cndmask_b16 v107.h, 0x7fff, v72.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v107, s40, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v73, v107, v81
	v_perm_b32 v73, v73, v107, v82
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v107, 0x80000000, v0, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v0, s35, v0
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
	v_add_nc_u32_e32 v84, s34, v84
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
	v_cmp_o_f32_e64 s5, v113, v113
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
	v_cndmask_b16 v107.l, 0x7fff, v112.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v111, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v94, v110, v107 offset1:8
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
	v_cmp_o_f32_e64 s5, v108, v108
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
	v_cndmask_b16 v108.l, 0x7fff, v106.h, s5
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
	ds_store_2addr_b32 v94, v107, v108 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v95
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
	ds_load_b128 v[110:113], v95 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v114
	v_mul_f32_e32 v7, v7, v114
	v_mul_f32_e32 v8, v8, v114
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[106:113], v[66:73], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[110:113], v95 offset:1024
	ds_load_b128 v[106:109], v96 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[66:73], v[9:16]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[106:109], v96 offset:1536
	ds_load_b128 v[110:113], v95 offset:1536
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
	v_mov_b32_e32 v68, v76
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v67, v66, s40, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v76, v66, v67
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp11:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v76, v68, v114
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v76, v76, v25
	v_div_scale_f32 v37, null, v76, v76, v26
	v_div_scale_f32 v40, null, v76, v76, v27
	v_rcp_f32_e32 v38, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v42, null, v76, v76, v28
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, vcc_lo, v25, v76, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v44, s0, v26, v76, v26
	v_fma_f32 v34, -v36, v38, 1.0
	v_fma_f32 v35, -v37, v39, 1.0
	v_div_scale_f32 v50, s1, v27, v76, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v40, v43, 1.0
	v_dual_fmac_f32 v38, v34, v38 :: v_dual_fmac_f32 v39, v35, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v42, v45, 1.0
	v_div_scale_f32 v52, null, v76, v76, v18
	v_dual_mul_f32 v46, v41, v38 :: v_dual_fmac_f32 v43, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v44, v39 :: v_dual_fmac_f32 v45, v51, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v36, v46, v41
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v37, v48, v44
	s_mov_b32 s22, 0x7ffffffe
	v_dual_mul_f32 v51, v50, v43 :: v_dual_fmac_f32 v46, v49, v38
	v_div_scale_f32 v49, s3, v28, v76, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v47, v39
	v_div_scale_f32 v47, null, v76, v76, v30
	v_fma_f32 v36, -v36, v46, v41
	v_div_scale_f32 v41, null, v76, v76, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v37, v48, v44
	v_fma_f32 v44, -v40, v51, v50
	v_div_fmas_f32 v36, v36, v38, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v46, v49, v45 :: v_dual_fmac_f32 v51, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v36, v76, v25
	v_div_fmas_f32 v36, v37, v39, v48
	v_rcp_f32_e32 v37, v47
	v_fma_f32 v39, -v42, v46, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, s1, v30, v76, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v41, v38, 1.0
	v_div_fixup_f32 v26, v36, v76, v26
	v_fma_f32 v36, -v40, v51, v50
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v76
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v46, v39, v45
	v_fma_f32 v40, -v47, v37, 1.0
	v_div_scale_f32 v44, null, v76, v76, v31
	v_div_fmas_f32 v36, v36, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v46, v49
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v49, null, v76, v76, v32
	v_div_scale_f32 v39, s4, v29, v76, v29
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v42, v42, v45, v46
	v_div_fixup_f32 v27, v36, v76, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v40, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v42, v76, v28
	v_mul_f32_e32 v46, v48, v37
	v_div_scale_f32 v42, s3, v31, v76, v31
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v50, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v46, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v51
	v_mul_f32_e32 v43, v39, v38
	v_div_scale_f32 v50, s5, v32, v76, v32
	v_fmac_f32_e32 v46, v36, v37
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v41, v43, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v74
	v_or_b32_e32 v0, 62, v77
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v45, v38
	v_div_scale_f32 v45, null, v76, v76, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v41, v43, v39
	v_rcp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v39, v38, v43
	v_fma_f32 v39, -v47, v46, v48
	v_mul_f32_e32 v47, v50, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v38, v76, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v45, v41, 1.0
	v_div_fmas_f32 v37, v39, v37, v46
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v46, s1, v17, v76, v17
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_mul_f32 v36, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v37, v76, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v76, v76, v20
	v_fma_f32 v43, -v44, v36, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v49, v47, v50
	v_fma_f32 v37, -v44, v36, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v43, v51
	v_fma_f32 v42, -v52, v39, 1.0
	v_div_scale_f32 v44, s3, v18, v76, v18
	v_div_scale_f32 v43, null, v76, v76, v19
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v38, v46, v41
	v_div_fmas_f32 v36, v37, v40, v36
	v_fma_f32 v37, -v49, v47, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v36, v76, v31
	v_div_fmas_f32 v37, v37, v51, v47
	v_mul_f32_e32 v47, v44, v39
	v_fma_f32 v40, -v45, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v32, v37, v76, v32
	v_fma_f32 v37, -v52, v47, v44
	v_fmac_f32_e32 v38, v40, v41
	v_rcp_f32_e32 v40, v48
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v37, v39
	v_fma_f32 v36, -v45, v38, v46
	v_div_scale_f32 v45, s4, v19, v76, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v41, v38
	v_fma_f32 v46, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v20, v76, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v36, v76, v17
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, null, v76, v76, v22
	v_fma_f32 v36, -v52, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v76, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v51, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v76, v76, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v47, v51
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v49, v38, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v50, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v50, v41
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v50, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v37, v45
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v76, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v43, v37, v45
	v_div_scale_f32 v43, s5, v22, v76, v22
	v_div_scale_f32 v45, null, v76, v76, v23
	v_div_fmas_f32 v36, v36, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v51
	v_mul_f32_e32 v39, v44, v38
	v_fma_f32 v37, -v48, v50, v41
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v76, v76, v24
	v_fma_f32 v41, -v49, v39, v44
	v_div_fmas_f32 v37, v37, v40, v50
	v_div_fixup_f32 v19, v36, v76, v19
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v48
	v_fmac_f32_e32 v39, v41, v38
	v_fma_f32 v41, -v46, v47, v43
	v_fma_f32 v50, -v45, v42, 1.0
	v_div_fixup_f32 v20, v37, v76, v20
	v_div_scale_f32 v37, s1, v23, v76, v23
	v_fma_f32 v36, -v49, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v41, v51 :: v_dual_fmac_f32 v42, v50, v42
	v_div_scale_f32 v49, null, v76, v76, v10
	v_div_fmas_f32 v36, v36, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v47, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v48, v40, 1.0
	v_div_scale_f32 v43, s3, v24, v76, v24
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v21, v36, v76, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v76, v76, v9
	v_div_fixup_f32 v22, v38, v76, v22
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v51, null, v76, v76, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v76, v9
	v_mul_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v39, v37
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v76, v76, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v76, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v76, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v76, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v11, v76, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v76, v76, v13
	v_div_scale_f32 v39, s3, v12, v76, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v76, v76, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v36, v76, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v76, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v76, v13
	v_div_fixup_f32 v11, v41, v76, v11
	v_div_scale_f32 v41, null, v76, v76, v15
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
	v_div_scale_f32 v38, s4, v14, v76, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v76, v76, v16
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
	v_div_fixup_f32 v12, v39, v76, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v76, v76, v2
	v_div_scale_f32 v37, null, v76, v76, v1
	v_div_fixup_f32 v13, v36, v76, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v76, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v76, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v76, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v76, v2
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
	v_div_fixup_f32 v14, v38, v76, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v76, v76, v3
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
	v_div_scale_f32 v43, null, v76, v76, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v76, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v76, v16
	v_div_fixup_f32 v15, v38, v76, v15
	v_div_scale_f32 v47, null, v76, v76, v8
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
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v76, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v76, v76, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v76, v2
	v_div_scale_f32 v40, null, v76, v76, v7
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
	v_div_scale_f32 v51, s4, v7, v76, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v76, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v76, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v8, v76, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v76, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v76, v76, v6
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
	v_div_scale_f32 v48, s3, v6, v76, v6
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
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s1, s17, s18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v5, v36, v76, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s17, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v76, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s17, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v76, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s17, v74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v76, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v37, v36, v74
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v76, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v37, v37, s1, 2
	v_add_lshl_u32 v38, v36, v74, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s17, v35
	v_cmp_gt_i32_e64 s1, s17, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v0, v36, v0, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v25, v41, s[20:23], 0 offen
	buffer_store_b32 v26, v39, s[20:23], 0 offen
	buffer_store_b32 v27, v40, s[20:23], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v39, 48, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v38, 56, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v39, s[20:23], 0 offen
	buffer_store_b32 v32, v38, s[20:23], 0 offen
	v_add_lshl_u32 v25, v36, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v37
	v_add_nc_u32_e32 v27, 0x50, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v37
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v37
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[20:23], 0 offen
	buffer_store_b32 v18, v26, s[20:23], 0 offen
	buffer_store_b32 v19, v27, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v37
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[20:23], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v37
	v_add_nc_u32_e32 v20, 0x78, v37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[20:23], 0 offen
	v_add_lshl_u32 v17, v36, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[20:23], 0 offen
	buffer_store_b32 v24, v20, s[20:23], 0 offen
	buffer_store_b32 v9, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[20:23], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	buffer_store_b32 v14, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_lshl_u32 v11, v36, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v37
	v_add_nc_u32_e32 v13, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v16, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	buffer_store_b32 v3, v13, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v37
	v_add_nc_u32_e32 v2, 0xe0, v37
	v_add_nc_u32_e32 v3, 0xe8, v37
	v_add_nc_u32_e32 v9, 0xf0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v3, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	buffer_store_b32 v8, v0, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 115
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8048
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
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
