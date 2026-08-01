	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v60, 15, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v13, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s22, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s15, s22, s2
	.loc	1 787 79 is_stmt 0              ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v13
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	v_mov_b32_e32 v4, v17
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v19, 1, v0
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x28
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s16, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s16, 4
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s16, s15, v[57:58]
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v19, 0x70, v19
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v14, 2, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s10, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s22, v14
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v15, 3, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v67, 0, v18
	s_clause 0x1
	buffer_load_b128 v[5:8], v1, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v2, s[24:27], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s3, s1, s0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v14
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_mul_lo_u32 v14, s9, v14
	s_sext_i32_i16 s3, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v20, 32, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s3, s3, 1
	v_and_b32_e32 v24, 31, v0
	v_and_b32_e32 v25, 24, v0
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s3, s2, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s2, s19, s2
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s8, s1
	v_mov_b32_e32 v2, v17
	s_add_i32 s4, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v13, 4, v13
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v29, 5, v0
	v_bfe_i32 v30, v0, 2, 1
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v16, 48, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v63, v60, 7, v13
	v_and_b32_e32 v26, 12, v0
	v_and_b32_e32 v59, 16, v0
	v_lshlrev_b32_e32 v40, 3, v60
	v_and_b32_e32 v29, 0x160, v29
	v_and_b32_e32 v30, 0x90, v30
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v61, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_bfe_i32 v21, v0, 5, 1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v58, 1, v16
	v_lshl_or_b32 v16, v16, 5, v40
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v22, 0x70, v0
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_lshlrev_b32 v27, 7, v0
	v_bfe_i32 v28, v0, 0, 1
	v_and_b32_e32 v33, 0x104, v21
	v_and_b32_e32 v21, 0x84, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v27, 0x700, v27
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v62, 0x7c, v0
	v_and_b32_e32 v28, 0x90, v28
	v_lshrrev_b32_e32 v23, 4, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_lshlrev_b32_e32 v0, 2, v60
	v_lshlrev_b32_e32 v42, 1, v60
	v_add_nc_u32_e32 v27, 0, v27
	v_xor_b32_e32 v40, 0x70, v63
	v_lshl_or_b32 v76, s3, 10, v23
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s18, s18, 0x3fb8aa3b
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s23, 0
	v_add_nc_u32_e32 v84, 0, v40
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s38
	s_mov_b32 s38, s26
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s19, s3, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s34, s3, 7
	s_mov_b32 s41, s39
	s_mov_b32 s39, s27
	s_mov_b32 s24, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[5:8]
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[9:12] offset:2048
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v31, 2, v15
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_mov_b32 v7, v17
	v_lshrrev_b32_e32 v38, 4, v20
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v32, 2, v24
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_lshlrev_b32 v24, 4, v24
	v_add3_u32 v89, s4, v31, v14
	v_mov_b32_e32 v14, v17
	v_lshrrev_b32_e32 v35, 1, v25
	v_lshlrev_b32_e32 v36, 2, v20
	v_lshl_or_b32 v13, v25, 5, v13
	v_lshlrev_b32_e32 v15, 5, v15
	v_lshlrev_b32_e32 v45, 4, v20
	v_or3_b32 v64, v24, v38, v35
	v_lshl_or_b32 v24, v59, 4, v36
	v_or3_b32 v69, v13, v36, v35
	v_mov_b32_e32 v8, v17
	v_or3_b32 v66, v30, v45, v29
	v_xor_b32_e32 v13, 4, v64
	v_lshlrev_b32_e32 v34, 1, v61
	v_lshrrev_b32_e32 v37, 5, v61
	v_lshrrev_b32_e32 v44, 1, v61
	v_xor_b32_e32 v19, v33, v32
	v_add_nc_u32_e32 v85, 0, v13
	v_mov_b32_e32 v13, v17
	v_lshlrev_b32_e32 v39, 1, v26
	v_lshl_or_b32 v15, v26, 7, v15
	v_add_nc_u32_e32 v25, 0, v34
	v_xor_b32_e32 v21, v21, v32
	v_mov_b32_e32 v9, 0
	v_lshrrev_b32_e32 v22, 2, v22
	v_or3_b32 v71, v15, v24, v39
	v_xor_b32_e32 v15, v16, v58
	v_xor_b32_e32 v16, 16, v66
	v_add_nc_u32_e32 v32, 0, v44
	v_xor_b32_e32 v22, v28, v22
	v_lshl_or_b32 v18, v20, 6, v63
	v_add_nc_u32_e32 v77, v25, v15
	v_add_nc_u32_e32 v88, 0, v16
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v43, 2, v59
	v_xor_b32_e32 v15, 24, v71
	v_or_b32_e32 v68, v19, v34
	v_or_b32_e32 v70, v21, v37
	v_lshlrev_b32_e32 v41, 1, v20
	v_add3_u32 v26, 0, v43, v20
	v_add_nc_u32_e32 v97, 0, v15
	v_mov_b32_e32 v15, v17
	v_add_nc_u32_e32 v65, 0, v0
	v_xor_b32_e32 v28, 32, v63
	v_xor_b32_e32 v29, 48, v63
	v_xor_b32_e32 v30, 64, v63
	v_xor_b32_e32 v33, 0x50, v63
	v_xor_b32_e32 v38, 0x60, v63
	v_add_nc_u32_e32 v73, v26, v42
	v_add_nc_u32_e32 v74, v32, v42
	v_add_nc_u32_e32 v75, v27, v22
	v_add_nc_u32_e32 v22, 0, v18
	v_xor_b32_e32 v26, 0x208, v68
	v_xor_b32_e32 v27, 4, v69
	v_xor_b32_e32 v32, 8, v69
	v_xor_b32_e32 v34, 12, v69
	v_xor_b32_e32 v35, 0x108, v70
	v_xor_b32_e32 v36, 8, v71
	v_xor_b32_e32 v39, 16, v71
	v_xad_u32 v23, v18, 16, 0
	v_xad_u32 v24, v18, 32, 0
	v_xad_u32 v37, v18, 48, 0
	v_add_nc_u32_e32 v72, v65, v41
	v_xad_u32 v41, v18, 64, 0
	v_xad_u32 v45, 0x50, v18, 0
	v_xad_u32 v49, 0x60, v18, 0
	v_xad_u32 v18, 0x70, v18, 0
	v_add_nc_u32_e32 v79, 0, v28
	v_add_nc_u32_e32 v80, 0, v29
	v_add_nc_u32_e32 v81, 0, v30
	v_add_nc_u32_e32 v82, 0, v33
	v_add_nc_u32_e32 v83, 0, v38
	v_add_nc_u32_e32 v90, 0, v26
	v_add_nc_u32_e32 v91, 0, v27
	v_add_nc_u32_e32 v92, 0, v32
	v_add_nc_u32_e32 v93, 0, v34
	v_add_nc_u32_e32 v94, 0, v35
	v_add_nc_u32_e32 v95, 0, v36
	v_add_nc_u32_e32 v96, 0, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v22
	ds_load_b128 v[29:32], v23
	ds_load_b128 v[33:36], v24
	ds_load_b128 v[37:40], v37
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v18
	v_xor_b32_e32 v20, 16, v63
	v_xor_b32_e32 v19, 8, v64
	v_xor_b32_e32 v21, 12, v64
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s17, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v78, 0, v20
	v_add_nc_u32_e32 v86, 0, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v87, 0, v21
	v_mov_b32_e32 v12, v17
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s23, s19
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v24, v17
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s16
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v101, 0, v63
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v103, s2, v57, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v21, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v22, v17 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	v_mov_b32_e32 v23, v17
	v_dual_mov_b32 v118, v24 :: v_dual_mov_b32 v115, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v116, v22
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[103:106], v103, s[24:27], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v117, v23 :: v_dual_mov_b32 v114, v20
	v_dual_mov_b32 v113, v19 :: v_dual_mov_b32 v112, v18
	v_mov_b32_e32 v111, v17
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v18, v89, s23, 1
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 35                        ; attention.py:965:35
	v_mov_b16_e32 v24.l, 0
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s14, s23, 1
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s35, s23, 4
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v23.l, v24.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s35, s35, s34
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s35, s35, s17
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[103:106]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b64 v[18:19], v18, s[40:43], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v101
	ds_load_b128 v[107:110], v78
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[103:110], v[25:32], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v79
	ds_load_b128 v[107:110], v80
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[103:110], v[33:40], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v81
	ds_load_b128 v[107:110], v82
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[111:118], v[103:110], v[41:48], v[111:118]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[103:106], v83
	ds_load_b128 v[107:110], v84
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[111:118], v[103:110], v[49:56], v[111:118]
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v103.l, v24.l
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v20, 0xff80ff80, v18, s0
	v_cndmask_b32_e64 v21, 0xff80ff80, v19, s0
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v19, 0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v18.l, v20.l
	v_mov_b16_e32 v18.h, v21.l
	ds_store_b32 v19, v18
	v_mov_b16_e32 v18.l, v20.h
	v_mov_b16_e32 v18.h, v21.h
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v19.l, v24.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b32 v90, v18
	v_add_nc_u32_e32 v18, 0, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v22, v91
	ds_load_b32 v101, v92
	ds_load_b32 v18, v18
	ds_load_b32 v104, v93
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v19.h, v22.l
	v_and_b32_e32 v22, 0xffff0000, v22
	v_mov_b16_e32 v24.h, v18.l
	v_and_b32_e32 v18, 0xffff0000, v18
	v_mov_b16_e32 v23.h, v101.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v106, 0x3fb8aa3b, v19
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v103.h, v104.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v22
	v_mul_f32_e32 v105, 0x3fb8aa3b, v18
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v18.l, v24.l
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v23, 0x3fb8aa3b, v23
	v_dual_mul_f32 v103, 0x3fb8aa3b, v103 :: v_dual_fmac_f32 v106, s18, v113
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v101, 0xffff0000, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v18
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v18.h, v20.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v23, s18, v115
	v_fmac_f32_e32 v103, s18, v117
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v107, 0x3fb8aa3b, v24 :: v_dual_fmac_f32 v22, s18, v114
	.loc	1 966 34 is_stmt 1              ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v18
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s2, s0, s2
	.loc	1 965 25 is_stmt 1              ; attention.py:965:25
	v_dual_fmac_f32 v107, s18, v111 :: v_dual_and_b32 v104, 0xffff0000, v104
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v18, 0, 1, s2
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v101, 0x3fb8aa3b, v101 :: v_dual_mul_f32 v104, 0x3fb8aa3b, v104
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v19, 0, 1, s3
	v_lshlrev_b16 v18.l, 8, v18.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v105, s18, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v101, s18, v116 :: v_dual_fmac_f32 v104, s18, v118
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v18.l, v19.l, v18.l
	v_add_nc_u32_e32 v19, 0, v70
	ds_store_b16 v19, v18
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v18, 0xffff0000, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v18
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v18, 0xffff0000, v20
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s4, s0, s4
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v18
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v18, 0, 1, s4
	s_and_b32 s5, s0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_cndmask_b32_e64 v19, 0, 1, s5
	v_or_b16 v18.l, v19.l, v18.l
	ds_store_b16 v94, v18
	v_add_nc_u32_e32 v18, 0, v64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v18, v18
	s_waitcnt lgkmcnt(0)
	v_and_b16 v18.h, 1, v18.l
	v_lshrrev_b16 v18.l, 8, v18.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s13, 1, v18.h
	ds_load_u16_d16_hi v18, v85
	s_waitcnt lgkmcnt(0)
	v_and_b16 v18.l, 1, v18.l
	v_cmp_eq_u16_e64 s12, 1, v18.l
	v_and_b16 v19.l, 1, v18.h
	v_lshrrev_b16 v18.l, 8, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s10, 1, v19.l
	ds_load_u16_d16 v19, v86
	v_and_b16 v18.l, 1, v18.l
	v_cmp_eq_u16_e64 s11, 1, v18.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v21, 0xff800000, v22, s11
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v19.h, 1, v19.l
	v_lshrrev_b16 v18.l, 8, v19.l
	v_cmp_eq_u16_e64 s8, 1, v19.h
	ds_load_u16_d16_hi v19, v87
	v_and_b16 v18.l, 1, v18.l
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v22, 0xff800000, v23, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s9, 1, v18.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v23, 0xff800000, v101, s9
	.loc	1 966 25                        ; attention.py:966:25
	v_lshrrev_b16 v18.l, 8, v19.h
	v_and_b16 v20.l, 1, v19.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v19, 0xff800000, v105, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v105, v21, v22, v23
.Ltmp2:
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v18.l, 1, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s6, 1, v20.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v20, 0xff800000, v106, s10
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s7, 1, v18.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v18, 0xff800000, v107, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v103, 0xff800000, v103, s6
	v_cndmask_b32_e64 v104, 0xff800000, v104, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v101, v18, v19, v20
	v_max_f32_e32 v106, v103, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v101, v101, v105, v106
.Ltmp4:
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v105, s14, v76
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v102
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[105:106], null, v105, s17, v[0:1]
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v106, 0, v71
	ds_store_b64 v106, v[18:19]
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v106, v101, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b64 v95, v[20:21]
	ds_store_b64 v96, v[22:23]
	ds_store_b64 v97, v[103:104]
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v101, v102, v101, v106
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v106, v18, v101
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v18, s35, v0, 1
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v110, v22, v101
	v_sub_f32_e32 v111, v23, v101
	v_sub_f32_e32 v112, v104, v101
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v102, v102, v101
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v104, v105, s[28:31], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[22:23], v18, s[36:39], 0 offen
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v102, v102
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v107, v19, v101
	v_sub_f32_e32 v108, v20, v101
	v_sub_f32_e32 v109, v21, v101
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[18:21], v77 offset1:32
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v103, v103, v101
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v102, 0, v102, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v103, v103
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v72, v102
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v102, v106
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v103, 0, v103, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v102, 0, v102, s13
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v105, v102, 16, 1
	v_cmp_o_f32_e64 s13, v102, v102
	v_add3_u32 v102, v102, v105, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v105, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v24.h, 0x7fff, v102.h, s13
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v105, 0, v105, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v106, v105, 16, 1
	v_cmp_o_f32_e64 s12, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v106, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v106, 0, v106, s10
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v107, v106, 16, 1
	v_cmp_o_f32_e64 s10, v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v106, v106, v107, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v107, v109
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v107, 0, v107, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v108, v107, 16, 1
	v_cmp_o_f32_e64 s11, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v108, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v108, 0, v108, s8
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v109, v108, 16, 1
	v_cmp_o_f32_e64 s8, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v109, v111
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v109, 0, v109, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v110, v109, 16, 1
	v_cmp_o_f32_e64 s9, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_bfe_u32 v110, v103, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v110, v103, v110, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v103, v112
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v103, 0, v103, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v111, v103, 16, 1
	v_cmp_o_f32_e64 s7, v103, v103
	v_add3_u32 v111, v103, v111, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_add_nc_u32_e32 v103, v65, v61
	ds_load_b32 v121, v103
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v73, v24
	v_cndmask_b16 v24.h, 0x7fff, v105.h, s12
	ds_store_b16_d16_hi v73, v24 offset:128
	v_cndmask_b16 v24.h, 0x7fff, v106.h, s10
	ds_store_b16_d16_hi v73, v24 offset:256
	v_cndmask_b16 v24.h, 0x7fff, v107.h, s11
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16_d16_hi v73, v24 offset:384
	v_cndmask_b16 v24.h, 0x7fff, v108.h, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v121
	v_mul_f32_e32 v4, v4, v121
	v_mul_f32_e32 v6, v6, v121
	v_mul_f32_e32 v7, v7, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16_d16_hi v73, v24 offset:512
	v_cndmask_b16 v24.h, 0x7fff, v109.h, s9
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v121
	v_mul_f32_e32 v9, v9, v121
	v_mul_f32_e32 v1, v1, v121
	v_mul_f32_e32 v3, v3, v121
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16_d16_hi v73, v24 offset:640
	v_cndmask_b16 v24.h, 0x7fff, v110.h, s6
	ds_store_b16_d16_hi v73, v24 offset:768
	v_cndmask_b16 v24.h, 0x7fff, v111.h, s7
	ds_store_b16_d16_hi v73, v24 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v24.h, v104.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v102, v104, 0, 8
	v_lshrrev_b32_e32 v107, 8, v104
	v_lshrrev_b32_e32 v114, 24, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s7, 7, v24.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v102.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v102.l, 0, -16, s7
	v_or_b16 v105.l, v24.h, v102.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v24.h, 4, v104.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v24.h, v24.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v102.l, v24.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v106.l, v24.h, v102.l, s6
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v24.h, 4, v107.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v102, v107, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v24.h, v24.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v102.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v102.l, v24.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v108.l, v24.h, v102.l, s6
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v24.h, v107.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v108, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v24.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v108, 0xffff0000, v22
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v102.l, 0, -16, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v107, v108, v107
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v102.l, v24.h, v102.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v24.h, v22.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v22, v105, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v105.h, v24.l
	v_cmp_o_f32_e64 s8, v107, v107
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v102, v102, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, v24, v22
	v_mul_f32_e32 v102, v108, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v105.l, v22.h
	v_cmp_o_f32_e64 s6, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v102, v102
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v22, v105, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v105, v106, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v106.h, v24.l
	v_cndmask_b16 v113.l, 0x7fff, v22.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v105, v24, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v24.h, v24.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v106.l, v105.h
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e32 v106.h, v24.l
	v_mov_b16_e32 v106.l, v107.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v113.h, 0x7fff, v105.h, s7
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v106, v107, v106, 0x7fff
	v_mov_b16_e32 v107.h, v24.l
	v_mov_b16_e32 v107.l, v102.h
	v_cndmask_b16 v22.h, 0x7fff, v106.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v107, 1, v107
	v_add3_u32 v102, v102, v107, 0x7fff
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	ds_load_u16_d16 v105, v74
	ds_load_u16_d16 v106, v74 offset:128
	ds_load_u16_d16 v107, v74 offset:256
	ds_load_u16_d16 v108, v74 offset:384
	ds_load_u16_d16 v109, v74 offset:512
	ds_load_u16_d16 v110, v74 offset:640
	ds_load_u16_d16 v111, v74 offset:768
	ds_load_u16_d16 v112, v74 offset:896
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v102.l, v24.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v22.l, 0x7fff, v102.h, s9
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v102.h, v23.l
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v74 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v74 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v74 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v74 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v74 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v74 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v74 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v74 offset:960
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v75, v113, v22 offset1:8
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v22.l, v104.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_bfe_i32 v22, v22, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v22.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v22.l, v104.h, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s7, 7, v22.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v22.h, 0, -16, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v113.l, v22.l, v22.h
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v22, v114, 0, 8
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v113, v113, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s7, 0, v22.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v22, 20, v104
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v22.l, v22.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v113, v102, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v22.h, v22.l, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v104.l, v22.l, v22.h, s6
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v22.l, v114.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v104, v104, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v22.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v22.h, 0, -16, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v102, v102, v104
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v115.l, v22.l, v22.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v22.l, 4, v114.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v104, v115, 0, 16
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v22.h, v22.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v22.l, v22.l, v22.h, s7
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v102, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v22, v22, 0, 16
	v_cvt_f32_i32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v22, v23, v22
	v_mul_f32_e32 v23, v23, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v104.h, v24.l
	v_mov_b16_e32 v104.l, v113.h
	v_cmp_o_f32_e64 s8, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v23, v23
	v_and_b32_e32 v104, 1, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v104, v113, v104, 0x7fff
	v_mov_b16_e32 v113.h, v24.l
	v_mov_b16_e32 v113.l, v102.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v102, v102, v113, 0x7fff
	v_mov_b16_e32 v113.h, v24.l
	v_mov_b16_e32 v113.l, v22.h
	v_mov_b16_e32 v24.l, v23.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v22, v22, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v23, v23, v24, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v104.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v102.h, s7
	v_mov_b32_e32 v102, v101
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s8
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s9
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v23, v18, v18
.Ltmp8:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v75, v24, v22 offset0:16 offset1:24
	v_add_nc_u32_e32 v22, 0, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[117:120], v88
	ds_load_b128 v[113:116], v22
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v24, v99, v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[105:112], v[1:8]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[113:116], v22 offset:1024
	ds_load_b128 v[117:120], v88 offset:1024
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v22, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, v23, v22
	v_max3_f32 v22, v22, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v23, v22
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v23, v23, v23
	v_max_f32_e32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v12, v12, v121 :: v_dual_mov_b32 v23, v22
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v23, v23, v23
.Ltmp15:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v11, v11, v121 :: v_dual_max_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v10, v10, v121 :: v_dual_max_f32 v99, v24, v22
	v_mul_f32_e32 v13, v13, v121
	v_mul_f32_e32 v14, v14, v121
	v_mul_f32_e32 v15, v15, v121
	v_dual_mul_f32 v16, v16, v121 :: v_dual_sub_f32 v21, v21, v99
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v18, v18, v99
	v_sub_f32_e32 v20, v20, v99
	v_sub_f32_e32 v19, v19, v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[105:112], v[9:16]
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v19, v19
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v18, 0, v18, s3
	v_cndmask_b32_e64 v20, 0, v20, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v19, 0, v19, s2
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v100
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v18, v18, v20 :: v_dual_add_f32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v18, v18, v19 :: v_dual_max_f32 v19, v100, v100
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v20, v18 :: v_dual_max_f32 v19, v19, v22
	v_mov_b32_e32 v22, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v21, v100, v19 :: v_dual_mov_b32 v100, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp20:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v21, v18
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s2, s23, 16
	s_cmpk_lt_u32 s23, 0x7f0
	s_mov_b32 s23, s2
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v18, v21
.Ltmp24:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v98, v22, v20
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_add_nc_u32_e32 v0, 0, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b32 v0, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v17, v103
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 2, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v18, v0, v60
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 32, v58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s22, v18
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v19, null, v17, v17, v1
	v_div_scale_f32 v21, null, v17, v17, v2
	v_div_scale_f32 v25, null, v17, v17, v4
	v_rcp_f32_e32 v27, v19
	v_div_scale_f32 v23, null, v17, v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v21
	v_rcp_f32_e32 v30, v25
	v_div_scale_f32 v20, vcc_lo, v1, v17, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v29, v23
	v_div_scale_f32 v31, null, v17, v17, v5
	v_fma_f32 v34, -v19, v27, 1.0
	v_div_scale_f32 v24, s2, v3, v17, v3
	v_fma_f32 v35, -v21, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v25, v30, 1.0
	v_fmac_f32_e32 v27, v34, v27
	v_rcp_f32_e32 v37, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v23, v29, 1.0
	v_fmac_f32_e32 v28, v35, v28
	v_dual_fmac_f32 v30, v38, v30 :: v_dual_mul_f32 v35, v20, v27
	v_div_scale_f32 v22, s1, v2, v17, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v26, s3, v4, v17, v4
	v_fma_f32 v41, -v19, v35, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v31, v37, 1.0
	v_mul_f32_e32 v38, v24, v29
	v_div_scale_f32 v32, s4, v5, v17, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v35, v41, v27 :: v_dual_mul_f32 v36, v22, v28
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v33, null, v17, v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v19, v35, v20
	v_dual_mul_f32 v40, v26, v30 :: v_dual_mul_f32 v41, v32, v37
	v_fma_f32 v42, -v21, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v19, v19, v27, v35
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v23, v38, v24
	v_fma_f32 v39, -v25, v40, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v19, v17, v1
	v_fma_f32 v19, -v31, v41, v32
	v_fmac_f32_e32 v36, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v19, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v21, v36, v22
	v_fma_f32 v22, -v33, v34, 1.0
	v_div_fmas_f32 v20, v20, v28, v36
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v22, v34
	v_div_scale_f32 v28, null, v17, v17, v9
	v_div_fixup_f32 v2, v20, v17, v2
	v_div_scale_f32 v20, s2, v6, v17, v6
	v_fmac_f32_e32 v38, v43, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v20, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v23, v38, v24
	v_div_scale_f32 v23, null, v17, v17, v7
	v_div_fmas_f32 v21, v21, v29, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v21, v17, v3
	v_rcp_f32_e32 v21, v23
	v_fmac_f32_e32 v40, v39, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v25, v40, v26
	v_fma_f32 v25, -v33, v19, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v21, 1.0
	v_fmac_f32_e32 v21, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v24, v30, v40
	v_div_scale_f32 v24, null, v17, v17, v8
	v_div_scale_f32 v30, null, v17, v17, v10
	v_div_fixup_f32 v4, v22, v17, v4
	v_fma_f32 v22, -v31, v41, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v27, v24
	v_rcp_f32_e32 v26, v28
	v_rcp_f32_e32 v32, v30
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v37, v41
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v5, v22, v17, v5
	v_fma_f32 v22, -v24, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v28, v26, 1.0
	v_fma_f32 v35, -v30, v32, 1.0
	v_fmac_f32_e32 v19, v25, v34
	v_div_scale_f32 v25, s3, v7, v17, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v22, v27 :: v_dual_fmac_f32 v26, v31, v26
	v_div_scale_f32 v31, null, v17, v17, v11
	v_dual_mul_f32 v29, v25, v21 :: v_dual_fmac_f32 v32, v35, v32
	v_fma_f32 v20, -v33, v19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v31
	v_div_scale_f32 v22, s4, v8, v17, v8
	v_div_scale_f32 v35, s5, v10, v17, v10
	v_div_fmas_f32 v19, v20, v34, v19
	v_fma_f32 v20, -v23, v29, v25
	v_div_scale_f32 v34, s2, v9, v17, v9
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v19, v17, v6
	v_fmac_f32_e32 v29, v20, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v29, v25
	v_fma_f32 v25, -v31, v36, 1.0
	v_mul_f32_e32 v33, v22, v27
	v_mul_f32_e32 v23, v35, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v21, v29
	v_fmac_f32_e32 v36, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v24, v33, v22
	v_mul_f32_e32 v37, v34, v26
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v25, null, v17, v17, v12
	v_fmac_f32_e32 v33, v20, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v28, v37, v34
	v_div_fixup_f32 v7, v19, v17, v7
	v_fma_f32 v21, -v24, v33, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v20, v26
	v_fma_f32 v20, -v30, v23, v35
	v_div_scale_f32 v22, s3, v11, v17, v11
	v_div_fmas_f32 v21, v21, v27, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v28, v37, v34
	v_fmac_f32_e32 v23, v20, v32
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v20, v22, v36
	v_rcp_f32_e32 v28, v25
	v_div_fmas_f32 v24, v24, v26, v37
	v_fma_f32 v26, -v30, v23, v35
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v27, -v31, v20, v22
	v_div_fixup_f32 v8, v21, v17, v8
	v_div_scale_f32 v21, null, v17, v17, v13
	v_div_fmas_f32 v23, v26, v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v27, v36
	v_div_scale_f32 v30, null, v17, v17, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v23, v17, v10
	v_div_scale_f32 v23, null, v17, v17, v15
	v_fma_f32 v19, -v31, v20, v22
	v_fma_f32 v22, -v25, v28, 1.0
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_div_fixup_f32 v9, v24, v17, v9
	v_div_fmas_f32 v19, v19, v36, v20
	v_rcp_f32_e32 v20, v21
	v_fmac_f32_e32 v28, v22, v28
	v_div_scale_f32 v22, null, v17, v17, v14
	v_div_scale_f32 v24, vcc_lo, v12, v17, v12
	v_div_fixup_f32 v11, v19, v17, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v23, v27, 1.0
	v_rcp_f32_e32 v26, v22
	v_fma_f32 v36, -v30, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v21, v20, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v34, v27
	v_div_scale_f32 v34, s4, v15, v17, v15
	v_fmac_f32_e32 v20, v19, v20
	v_div_scale_f32 v19, s2, v13, v17, v13
	v_fmac_f32_e32 v32, v36, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v38, v34, v27 :: v_dual_mul_f32 v29, v24, v28
	v_fma_f32 v31, -v22, v26, 1.0
	v_mul_f32_e32 v35, v19, v20
	v_div_scale_f32 v36, s5, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v25, v29, v24
	v_fmac_f32_e32 v26, v31, v26
	v_div_scale_f32 v31, s3, v14, v17, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v36, v32
	v_fmac_f32_e32 v29, v33, v28
	v_fma_f32 v33, -v21, v35, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v31, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v25, v29, v24
	v_fmac_f32_e32 v35, v33, v20
	v_fma_f32 v25, -v22, v37, v31
	v_fma_f32 v33, -v23, v38, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v24, v28, v29
	v_fma_f32 v19, -v21, v35, v19
	v_fma_f32 v21, -v30, v39, v36
	v_fmac_f32_e32 v37, v25, v26
	v_fmac_f32_e32 v38, v33, v27
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v24, v17, v12
	v_fmac_f32_e32 v39, v21, v32
	v_div_fmas_f32 v19, v19, v20, v35
	v_fma_f32 v20, -v22, v37, v31
	v_fma_f32 v21, -v23, v38, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v22, -v30, v39, v36
	v_div_fixup_f32 v13, v19, v17, v13
	v_div_fmas_f32 v20, v20, v26, v37
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v19, v3, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v38
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v20, v17, v14
	v_div_fmas_f32 v22, v22, v32, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v21, v17, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v20, v4, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v22, v17, v16
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v17, s15, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v18, v1, 16, 1
	v_cmp_o_f32_e64 s4, v4, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v18, v1, v18, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v1, v2, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v3, v19, 0x7fff
	v_add3_u32 v3, v4, v20, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_cmp_o_f32_e64 s5, v16, v16
	v_cndmask_b16 v18.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v5, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v1, v5, v1, 0x7fff
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v3, v7, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_bfe_u32 v4, v9, 16, 1
	v_bfe_u32 v6, v10, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s4
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v4, v9, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v10, v10
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v11, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v13, 16, 1
	v_add3_u32 v5, v11, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v7, v12, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_add3_u32 v6, v13, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v8, v14, 16, 1
	v_bfe_u32 v9, v15, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s3
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s4
	v_add3_u32 v7, v14, v8, 0x7fff
	v_add3_u32 v8, v15, v9, 0x7fff
	v_bfe_u32 v9, v16, 16, 1
	v_cmp_eq_u32_e64 s4, 0, v59
	v_mov_b32_e32 v10, 0x5410
	v_mov_b32_e32 v11, 0x7632
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s3, v15, v15
	v_add3_u32 v9, v16, v9, 0x7fff
	v_cndmask_b32_e64 v10, 0x1054, v10, s4
	v_cndmask_b32_e64 v11, 0x3276, v11, s4
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s5
	v_lshl_or_b32 v8, v10, 8, v10
	v_lshl_or_b32 v9, v11, 8, v11
	v_cndmask_b32_e64 v10, v3, v2, s4
	v_cndmask_b32_e64 v2, v2, v3, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v17, s17, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 0x540054, v8
	v_and_b32_e32 v8, 0x760076, v9
	v_cndmask_b32_e64 v9, v6, v4, s4
	v_cndmask_b32_e64 v4, v4, v6, s4
	s_mov_b32 s3, 0x76543210
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v6, v8, 4, v8
	v_cndmask_b32_e64 v11, v7, v5, s4
	v_cndmask_b32_e64 v5, v5, v7, s4
	v_permlanex16_b32 v14, v4, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x5040504, v3
	v_and_b32_e32 v13, 0x7060706, v6
	v_permlanex16_b32 v6, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v12, v1, v18, s4
	v_cndmask_b32_e64 v1, v18, v1, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s17, v58
	v_cmp_gt_i32_e64 s2, s17, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v15, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v10, v8
	v_perm_b32 v4, v6, v10, v13
	v_perm_b32 v5, v14, v9, v8
	v_perm_b32 v6, v14, v9, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v9, v17, v58, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v7, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v17, v0, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v7, v12, v8
	v_perm_b32 v2, v7, v12, v13
	v_perm_b32 v7, v15, v11, v8
	v_perm_b32 v8, v15, v11, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 122
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 122
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7420
; TotalNumSgprs: 46
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 122
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
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
