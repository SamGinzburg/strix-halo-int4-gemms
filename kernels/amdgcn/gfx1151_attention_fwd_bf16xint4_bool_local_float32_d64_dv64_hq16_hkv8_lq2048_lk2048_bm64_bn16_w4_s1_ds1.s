	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v49, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v90, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v1, 3, v49
	s_clause 0x2
	s_load_b64 s[24:25], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s19, s33, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v90
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v74, 1, v0
	v_lshlrev_b32_e32 v50, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 0x60, v0
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v92, 0x70, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[79:80], null, s34, v90, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s4, s34, 4
	s_lshl_b32 s5, s34, 5
	s_mul_i32 s6, s34, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s34, s19, v[79:80]
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v91, 16, v0
	v_dual_mov_b32 v15, v8 :: v_dual_lshlrev_b32 v94, 4, v49
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v11, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s4, 1
	v_add_lshl_u32 v4, v2, s5, 1
	v_add_lshl_u32 v2, v2, s6, 1
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s33, s13
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[33:36], v1, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v3, s[24:27], 0 offen
	buffer_load_b128 v[41:44], v4, s[24:27], 0 offen
	buffer_load_b128 v[45:48], v2, s[24:27], 0 offen
	s_load_b32 s2, s[0:1], 0x80
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v14, v8 :: v_dual_and_b32 v51, 0x70, v74
	v_mov_b32_e32 v3, v8
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s33, s12
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v2, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v50, v50, v51
	v_mov_b32_e32 v12, v8
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
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, s2
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s2
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s4, 0x800
	v_mov_b32_e32 v32, v8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 15
	v_mov_b32_e32 v31, v8
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s6, s4, 31
	v_mov_b32_e32 v30, v8
	s_lshr_b32 s6, s6, 28
	v_mov_b32_e32 v29, v8
	s_add_i32 s4, s4, s6
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v93, 1, v65
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v95, 0, v50
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s40, s5, 0x7ffffff0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s41, s4, -16
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v95, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v95, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[45:48] offset:6144
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s40, s41
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_19
; %bb.1:                                ; %.lr.ph
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v66, 4, v92
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s4, s4, 28
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x8
	s_add_i32 s14, s3, s4
	s_load_b128 s[4:7], s[0:1], 0x64
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s14, -16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 8, v66
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s15, s3, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v68, 16, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s15, 0x10007
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s0, s15, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v67
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s0, 0x80000
	v_lshl_or_b32 v107, v78, 7, v94
	s_sext_i32_i16 s0, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s33, v68
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v69, 24, v66
	v_or_b32_e32 v70, 32, v66
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s14, s14, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s0, s0, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 40, v66
	v_dual_mov_b32 v24, 0x7632 :: v_dual_add_nc_u32 v9, s2, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s2, v2
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s3, s14, s0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v1, v65, 6, v107
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s2, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v69
	v_or_b32_e32 v5, s33, v70
	v_or_b32_e32 v6, s33, v71
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v72, 48, v66
	.loc	1 951 47 is_stmt 1              ; attention.py:951:47
	v_subrev_nc_u32_e32 v97, s12, v2
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v105, s13, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v2, 0x70, v1, 0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v98, s12, v3
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v106, s13, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x60, v1, 0
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s2, v4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v5, s2, v5
	v_add_nc_u32_e32 v6, s2, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s33, v72
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v2
	ds_load_b128 v[33:36], v3
	v_xad_u32 v2, 0x50, v1, 0
	v_and_b32_e32 v19, 60, v74
	v_xad_u32 v3, v1, 64, 0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v99, s12, v4
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v108, s13, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v4, v1, 48, 0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v100, s12, v5
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v109, s13, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, v1, 32, 0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v101, s12, v6
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v110, s13, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v6, v1, 16, 0
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[45:48], v2
	ds_load_b128 v[41:44], v3
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[49:52], v5
	ds_load_b128 v[61:64], v6
	ds_load_b128 v[57:60], v1
	v_lshlrev_b32_e32 v1, 2, v65
	v_lshrrev_b32_e32 v6, 5, v65
	v_lshrrev_b32_e32 v22, 3, v65
	v_lshl_or_b32 v19, v65, 4, v19
	v_mov_b32_e32 v65, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v7, s2, v7
	v_and_b32_e32 v5, 14, v0
	v_xor_b32_e32 v12, 0x50, v107
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v96, s12, v9
	v_mov_b32_e32 v30, v65
	v_subrev_nc_u32_e32 v102, s12, v7
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v111, s13, v7
	v_and_b32_e32 v7, 1, v0
	v_dual_mov_b32 v31, v65 :: v_dual_add_nc_u32 v104, s13, v9
	v_lshrrev_b32_e32 v9, 1, v91
	v_mul_u32_u24_e32 v10, 0x48, v5
	v_xor_b32_e32 v19, v19, v22
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v125, 0, v12
	v_mov_b32_e32 v12, v65
	v_lshl_or_b32 v6, v7, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 56, v66
	v_xor_b32_e32 v4, 48, v107
	v_lshl_or_b32 v116, v7, 6, v19
	v_lshlrev_b32_e32 v17, 2, v92
	v_or3_b32 v114, v10, v6, v9
	v_bfe_i32 v9, v0, 0, 1
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v8, s33, v73
	v_lshrrev_b32_e32 v22, 2, v92
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v123, 0, v4
	v_xor_b32_e32 v10, 16, v114
	v_xor_b32_e32 v14, 48, v114
	v_and_b32_e32 v9, 0x90, v9
	v_xor_b32_e32 v4, 0x810, v116
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v8, s2, v8
	.loc	1 945 31 is_stmt 1              ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s43, s4, 0x3fb8aa3b
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s2, s6, s15
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s4, s5, s14
	v_lshlrev_b32_e32 v21, 5, v7
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s45, s2, s4
	v_cmp_eq_u32_e64 s2, 0, v91
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v129, 0, v10
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v131, 0, v14
	v_dual_mov_b32 v10, v65 :: v_dual_add_nc_u32 v143, 0, v4
	v_lshlrev_b32_e32 v20, 1, v5
	v_mov_b32_e32 v14, v65
	v_lshl_or_b32 v17, v5, 8, v17
	v_lshl_add_u32 v5, v5, 7, 0
	v_mov_b32_e32 v4, v65
	v_xor_b32_e32 v9, v9, v22
	v_dual_mov_b32 v23, 0x5410 :: v_dual_lshlrev_b32 v80, 2, v78
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v103, s12, v8
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v112, s13, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v118, v5, v9
	v_mov_b32_e32 v9, 0
	v_or3_b32 v115, v17, v21, v20
	v_cndmask_b32_e64 v21, 0x3276, v24, s2
	v_mov_b32_e32 v24, v65
	v_lshl_or_b32 v1, v78, 3, v1
	v_lshrrev_b32_e32 v8, 2, v91
	v_xor_b32_e32 v6, 0x70, v107
	v_cndmask_b32_e64 v20, 0x1054, v23, s2
	v_lshlrev_b32_e32 v23, 5, v0
	v_xor_b32_e32 v1, v1, v93
	v_xor_b32_e32 v2, 16, v107
	v_xor_b32_e32 v11, 64, v107
	v_lshl_or_b32 v7, v20, 8, v20
	v_lshl_or_b32 v19, v21, 8, v21
	v_or_b32_e32 v113, v1, v8
	v_xor_b32_e32 v1, 0x60, v107
	v_bfe_i32 v21, v0, 2, 1
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v127, 0, v6
	v_mov_b32_e32 v6, v65
	v_and_b32_e32 v20, 0x160, v23
	v_xor_b32_e32 v3, 32, v107
	v_xor_b32_e32 v8, 0x240, v113
	v_and_b32_e32 v7, 0x540054, v7
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v19, 0x760076, v19
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v121, 0, v2
	v_add_nc_u32_e32 v124, 0, v11
	v_add_nc_u32_e32 v126, 0, v1
	v_xor_b32_e32 v1, 16, v115
	v_xor_b32_e32 v2, 20, v115
	v_mov_b32_e32 v11, v65
	v_and_or_b32 v117, 0x90, v21, v20
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[81:82], null, s7, v67, v[78:79]
	v_mad_u64_u32 v[82:83], null, s7, v68, v[78:79]
	v_mad_u64_u32 v[83:84], null, s7, v69, v[78:79]
	v_mad_u64_u32 v[84:85], null, s7, v70, v[78:79]
	v_mad_u64_u32 v[85:86], null, s7, v71, v[78:79]
	v_xor_b32_e32 v13, 32, v114
	v_xor_b32_e32 v15, 64, v114
	v_xor_b32_e32 v16, 0x50, v114
	v_xor_b32_e32 v18, 0x60, v114
	v_xor_b32_e32 v17, 0x70, v114
	v_xor_b32_e32 v22, 4, v115
	v_xor_b32_e32 v20, 8, v115
	v_lshl_or_b32 v19, v19, 4, v19
	v_xor_b32_e32 v5, 12, v115
	v_add_nc_u32_e32 v122, 0, v3
	v_add_nc_u32_e32 v128, 0, v8
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_add_nc_u32 v139, 0, v1
	v_xor_b32_e32 v1, 24, v115
	v_xor_b32_e32 v3, 28, v115
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v140, 0, v2
	v_xor_b32_e32 v2, 16, v117
	v_mov_b32_e32 v8, v65
	v_lshl_or_b32 v7, v7, 4, v7
	v_mad_u64_u32 v[86:87], null, s7, v72, v[78:79]
	v_mad_u64_u32 v[87:88], null, s7, v73, v[78:79]
	v_mad_u64_u32 v[88:89], null, s7, v66, v[78:79]
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s35, v80
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v119, 0x5040504, v7
	v_and_b32_e32 v120, 0x7060706, v19
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_add_nc_u32 v130, 0, v13
	v_dual_mov_b32 v89, 0xff800000 :: v_dual_add_nc_u32 v132, 0, v15
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_add_nc_u32 v133, 0, v16
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v134, 0, v18
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_add_nc_u32 v135, 0, v17
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v136, 0, v22
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v137, 0, v20
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v138, 0, v5
	v_add_nc_u32_e32 v141, 0, v1
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v144, 0, v2
	v_mov_b32_e32 v26, v65
	v_mov_b32_e32 v27, v65
	v_mov_b32_e32 v28, v65
	v_dual_mov_b32 v32, v65 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v20, v65
	v_mov_b32_e32 v21, v65
	v_mov_b32_e32 v22, v65
	v_mov_b32_e32 v23, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_mov_b32_e32 v7, v65
	v_lshl_or_b32 v145, s3, 10, v66
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v169, 0xff800000
	v_mov_b32_e32 v171, 0xff800000
	v_mov_b32_e32 v173, 0xff800000
	v_mov_b32_e32 v175, 0xff800000
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s7, s33
	s_and_b32 s9, s9, 0xffff
	s_mov_b64 s[22:23], s[30:31]
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s42, s3, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s44, s3, 7
	s_add_i32 s45, s45, s5
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s46, 0x76543210
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v77.h, 0xff, v77.h
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v75.h, 0xff, v75.h
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v162, s43, v66 :: v_dual_mul_f32 v163, s43, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s8, 0, v77.h
	v_and_b16 v66.l, 0xff, v77.l
	v_and_b16 v161.l, 0xff, v74.l
	v_cmp_ne_u16_e64 s4, 0, v75.h
	v_cmp_ne_u16_e64 s6, 0, v76.h
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s16, s16, s8
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v75.l, 0xff, v75.l
	v_cmp_ne_u16_e64 s9, 0, v66.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v66, 0, 1, s16
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s2, 0, v161.l
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s12, s12, s4
	s_and_b32 s14, s14, s6
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s5, 0, v75.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v75, 0, 1, s12
	v_cndmask_b32_e64 v67, 0, 1, s14
	v_lshlrev_b16 v66.l, 8, v66.l
	s_and_b32 s10, s10, s2
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v164, s43, v68 :: v_dual_mul_f32 v165, s43, v69
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v68, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v66.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v75.l
	.loc	1 962 34 is_stmt 0              ; attention.py:962:34
	v_and_b16 v76.l, 0xff, v76.l
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s17, s17, s9
	v_mov_b16_e32 v67.l, v68.l
	v_cndmask_b32_e64 v161, 0, 1, s17
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s7, 0, v76.l
	v_and_b16 v74.h, 0xff, v74.h
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v66.l, v67.l, v66.l
	v_add_nc_u32_e32 v67, 0, v113
	s_and_b32 s15, s15, s7
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s3, 0, v74.h
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v77, 0, 1, s15
	s_and_b32 s13, s13, s5
	ds_store_b32 v67, v66
	v_mov_b16_e64 v66.l, v161.l
	v_cndmask_b32_e64 v76, 0, 1, s13
	v_mov_b16_e32 v67.l, v77.l
	s_and_b32 s11, s11, s3
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v70, s43, v70 :: v_dual_mul_f32 v71, s43, v71
	.loc	1 962 25                        ; attention.py:962:25
	v_lshlrev_b16 v66.l, 8, v66.l
	v_cndmask_b32_e64 v69, 0, 1, s11
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v72, s43, v72 :: v_dual_mul_f32 v73, s43, v73
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v66.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v76.l
	v_mov_b16_e32 v67.l, v69.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v147, v147, v147
	v_max_f32_e32 v149, v149, v149
	v_max_f32_e32 v151, v151, v151
	.loc	1 962 25                        ; attention.py:962:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v167
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v74.l, 0
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v66.l, v67.l, v66.l
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v196.h, v74.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v195.l, v74.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v146, v146, v146
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b32 v128, v66
	v_add_nc_u32_e32 v66, 0, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v129
	ds_load_u8_d16 v67, v130
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v131
	ds_load_u8_d16 v68, v132
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v133
	ds_load_u8_d16 v69, v134
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v69, v135
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v148, v148, v148
	v_max_f32_e32 v150, v150, v150
	v_max_f32_e32 v152, v152, v152
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s8, 1, v66.l
	v_and_b16 v66.l, 1, v66.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v176, 0xff800000, v162, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s9, 1, v66.l
	v_and_b16 v66.l, 1, v67.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v177, 0xff800000, v163, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v66.l
	v_and_b16 v66.l, 1, v67.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v178, 0xff800000, v164, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v66.l
	v_and_b16 v66.l, 1, v68.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v179, 0xff800000, v165, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s4, 1, v66.l
	v_and_b16 v66.l, 1, v68.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v68, 0, v116
	v_cndmask_b32_e64 v181, 0xff800000, v70, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s5, 1, v66.l
	v_and_b16 v66.l, 1, v69.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v182, 0xff800000, v71, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s2, 1, v66.l
	v_and_b16 v66.l, 1, v69.h
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v180, v179, v181, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v183, 0xff800000, v72, s2
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s3, 1, v66.l
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v66, 0, v115
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v184, 0xff800000, v73, s3
	ds_store_b32 v66, v176
	ds_store_b32 v136, v177
	ds_store_b32 v137, v178
	ds_store_b32 v138, v179
	ds_store_b32 v139, v181
	ds_store_b32 v140, v182
	ds_store_b32 v141, v183
	ds_store_b32 v142, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v68 offset1:32
	ds_load_2addr_b32 v[68:69], v68 offset0:64 offset1:96
	ds_load_2addr_b32 v[70:71], v143 offset1:32
	ds_load_2addr_b32 v[72:73], v143 offset0:64 offset1:96
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v185, v183, v184
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v75, v66
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v66, v66
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v77, v70, v70
	v_max_f32_e32 v161, v67, v67
	v_max_f32_e32 v162, v71, v71
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v68, v68
	v_max_f32_e32 v165, v69, v69
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v166, v73, v73
	v_dual_max_f32 v164, v72, v72 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v76, v75
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v76
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v76
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v75, v75, v76 :: v_dual_mov_b32 v76, v70
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v76, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v76
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v76
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v76
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	v_dual_max_f32 v76, v76, v77 :: v_dual_mov_b32 v77, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v161, v77
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v161, v77 :: v_dual_max_f32 v146, v146, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v161, v161 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v70, v70, v146 :: v_dual_max_f32 v161, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v70, v70
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v161, v77
.Ltmp28:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v70, 0, v70, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v161, v161 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v161
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v161, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v161
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v161, v71
	v_mov_b32_dpp v161, v161 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v161, v161
	v_max_f32_e32 v161, v162, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v161
	v_mov_b32_dpp v162, v162 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	v_max_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v161
	v_mov_b32_dpp v162, v162 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	v_max_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v161
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	v_dual_max_f32 v161, v161, v162 :: v_dual_mov_b32 v162, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v163, v162
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v162, v163
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v163, v163 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v162, v163
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v162, v162, v163 :: v_dual_mov_b32 v163, v72
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v163, v164, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v163
.Ltmp56:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v148, v148, v161
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_dual_max_f32 v163, v163, v164 :: v_dual_mov_b32 v164, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v165, v164
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v164, v165
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v164, v165
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v164, v164, v165 :: v_dual_mov_b32 v165, v73
.Ltmp67:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v149, v149, v162
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v165, v165 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	v_max_f32_e32 v165, v166, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
	v_mov_b32_dpp v166, v166 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v165, v165, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
.Ltmp73:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v150, v150, v163
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v72, v150
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v72, v72
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
.Ltmp80:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v72, 0, v72, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v165, v165, v166
	v_max3_f32 v166, v176, v177, v178
.Ltmp83:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v89, v89, v75
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v166, v166, v180, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v180, v166, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v166, v167, v166, v180
	v_max_f32_e32 v180, v168, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v71, v71, v148 :: v_dual_sub_f32 v184, v184, v166
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v75, v180, v75 :: v_dual_max_f32 v180, v169, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v147, v147, v77 :: v_dual_max_f32 v76, v180, v76
	v_max_f32_e32 v180, v170, v170
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v186, v169, v76 :: v_dual_max_f32 v77, v180, v77
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v180, v171, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v186, v186
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v161, v180, v161
	v_max_f32_e32 v180, v172, v172
	v_max_f32_e32 v152, v152, v165
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v66, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v188, v171, v161
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v162, v180, v162
	v_max_f32_e32 v180, v173, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v67, v67, v147
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v188, v188
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v189, v172, v162
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v163, v180, v163 :: v_dual_max_f32 v180, v174, v174
	v_max_f32_e32 v151, v151, v164
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v189, v189
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v190, v173, v163
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v164, v180, v164
	v_dual_max_f32 v180, v175, v175 :: v_dual_sub_f32 v187, v170, v77
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v68, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v190, v190
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v191, v174, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v165, v180, v165 :: v_dual_sub_f32 v180, v167, v166
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v185, v168, v75
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v191, v191
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v192, v175, v165
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v185, v185
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s10
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v151
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	s_lshr_b32 s10, s40, 1
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v192, v192
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v180, 0, v180, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v168
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s14
	v_cndmask_b32_e64 v73, 0, v73, s17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v167, 0, v185, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v169
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v180
	v_mul_f32_e32 v22, v22, v180
	v_mul_f32_e32 v23, v23, v180
	v_mul_f32_e32 v24, v24, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v168, 0, v186, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v170
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v186, v182, v166
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v71, v71
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v180
	v_mul_f32_e32 v10, v10, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v169, 0, v187, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v171
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v187, v183, v166
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v180
	v_mul_f32_e32 v12, v12, v180
	v_mul_f32_e32 v13, v13, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v170, 0, v188, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v172
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v71, 0, v71, s13
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v180
	v_mul_f32_e32 v1, v1, v180
	v_mul_f32_e32 v3, v3, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v171, 0, v189, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v173
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v180
	v_mul_f32_e32 v7, v7, v180
	v_mul_f32_e32 v8, v8, v180
	v_mul_f32_e32 v26, v26, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v172, 0, v190, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v174
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v180
	v_mul_f32_e32 v28, v28, v180
	v_mul_f32_e32 v18, v18, v180
	v_mul_f32_e32 v32, v32, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v173, 0, v191, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v175
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v175, v176, v166
	v_sub_f32_e32 v176, v177, v166
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v177, v178, v166
	v_sub_f32_e32 v178, v179, v166
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v183, v176
	v_exp_f32_e32 v176, v184
	v_exp_f32_e32 v179, v177
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v174, 0, v192, s18
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v184, 0, v67, s12
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v176, 0, v176, s3
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v179, 0, v179, s6
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp92:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v182, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v185, v181, v166
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v181, v178
	v_exp_f32_e32 v178, v186
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v182, 0, v182, s8
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp96:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v177, v185
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v185, 0, v69, s16
.Ltmp97:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp98:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v181, 0, v181, s7
	v_cndmask_b32_e64 v178, 0, v178, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v177, 0, v177, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v181, v181
	v_cmp_o_f32_e64 s4, v178, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp102:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v175, v187
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v175, 0, v175, s2
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s2, v176, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v70
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v70, v67
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
.Ltmp109:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v180 :: v_dual_fmac_f32 v66, v153, v167
	v_dual_mul_f32 v16, v16, v180 :: v_dual_mov_b32 v167, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v153, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v184
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v184, v69
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v70, v69, v70 :: v_dual_mov_b32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v25, v25, v180 :: v_dual_fmac_f32 v70, v155, v169
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v180
	v_mov_b32_e32 v169, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v155, v70
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v71
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v71, v69, v71
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v31, v31, v180 :: v_dual_fmac_f32 v68, v157, v171
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v6, v6, v180 :: v_dual_mov_b32 v171, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v157, v68
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v72, v69 :: v_dual_fmac_f32 v67, v154, v168
.Ltmp152:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v17, v17, v180 :: v_dual_mov_b32 v168, v75
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v154, v67 :: v_dual_add_f32 v69, v69, v72
	v_mov_b32_e32 v72, v185
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v185, v72
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v184, v184 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v72
	v_mov_b32_dpp v184, v184 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v184
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v184
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp162:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v29, v29, v180 :: v_dual_fmac_f32 v72, v159, v173
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v184, v184 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v173, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v159, v72
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v73
	v_mov_b32_dpp v184, v184 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v184
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v184, v184 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v73
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v73, v73, v184 :: v_dual_add_nc_u32 v184, s10, v145
.Ltmp171:
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s10, s40, 4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v180
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s10, s10, s44
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s40, s40, 16
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[184:185], null, v184, s35, v[80:81]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s10, s10, s35
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s40, s41
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v184, 0x80000000, v184, s1
	buffer_load_b32 v189, v184, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v184.l, v189.h
	v_lshrrev_b32_e32 v186, 24, v189
	v_bfe_i32 v190, v189, 0, 8
	v_lshrrev_b32_e32 v191, 8, v189
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v190.h, v74.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v193, v184, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v184, s10, v80, 1
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v185, v186, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v186.h, 4, v189.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v192, v191, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v192.h, v74.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v184, 0x80000000, v184, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v191.h, v74.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v186.h, v186.h, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[187:188], v184, s[28:31], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v74.h, v187.l
	v_and_b32_e32 v194, 0xffff0000, v187
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v187.l, v189.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v195.h, v188.l
	v_and_b32_e32 v184, 0xffff0000, v188
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v188.l, v190.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v187.h, v186.h, -16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v187.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v14, v14, v180 :: v_dual_fmac_f32 v71, v156, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v188.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v180
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v188.l, 0, -16, s11
	v_mov_b32_e32 v170, v77
	v_mov_b32_e32 v156, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b16 v187.l, v187.l, v188.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v188.l, v186.h, v187.h, s10
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v186.h, v191.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v187, v187, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v188, v188, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v186.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v187, v74, v187
	v_mul_f32_e32 v188, v74, v188
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v74.h, 4, v191.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v196.l, v187.h
	v_mov_b16_e64 v190.l, v188.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v188, v188
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v74.h, v74.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v196, 1, v196
	v_and_b32_e32 v190, 1, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v196, v187, v196, 0x7fff
	v_add3_u32 v190, v188, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v188.h, 0x7fff, v190.h, s10
	v_cmp_o_f32_e64 s10, v187, v187
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v187.l, v192.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v187.h, 0, -16, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v188.l, 0x7fff, v196.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v187.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v187.l, v74.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v190.l, v186.h, v187.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v186.h, v189.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v187.l, v74.h, v187.l, s10
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v190, v190, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v186.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v187, v187, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v190, v194, v190
	v_mul_f32_e32 v187, v194, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v192.l, v190.h
	v_mov_b16_e64 v191.l, v187.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v192, 1, v192
	v_cmp_o_f32_e64 s10, v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v191, 1, v191
	v_add3_u32 v192, v190, v192, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v191, v187, v191, 0x7fff
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b32_e32 v187, 20, v189
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v187.h, 0, -16, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v191.h, 0x7fff, v191.h, s10
	v_cmp_o_f32_e64 s10, v190, v190
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v74.h, v187.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v187.l, v193.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v189.l, v186.h, v187.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v190.h, v74.l
	v_cndmask_b16 v191.l, 0x7fff, v192.h, s10
	v_mov_b16_e64 v192.h, v74.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v187.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v187.l, v74.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v189, v189, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v187.l, v74.h, v187.l, s10
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v189, v189
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v74.h, 4, v186.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v186.l, v186.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v187, v187, 0, 16
	v_mul_f32_e32 v189, v195, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v186.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v192.l, v189.h
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v185.h, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v187, v195, v187 :: v_dual_and_b32 v192, 1, v192
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v186.l, v186.l, v185.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v190.l, v187.h
	v_cmp_o_f32_e64 s10, v187, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v192, v189, v192, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v186, v186, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v190, 1, v190
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v186, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v190, v187, v190, 0x7fff
	v_cndmask_b16 v187.h, 0x7fff, v190.h, s10
	v_cmp_o_f32_e64 s10, v189, v189
	v_mov_b16_e64 v189.h, v74.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v187.l, 0x7fff, v192.h, s10
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v185.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v185.l, v74.h, -16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v185.l, v74.h, v185.l, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v185, v185, 0, 16
	v_cvt_f32_i32_e32 v185, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v185, v184, v185
	v_mul_f32_e32 v184, v184, v186
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v186.h, v74.l
	v_mov_b16_e64 v186.l, v185.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v189.l, v184.h
	v_cmp_o_f32_e64 s10, v185, v185
	v_and_b32_e32 v186, 1, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v189, 1, v189
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v69, v158, v172
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v180
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v180, 0, v183, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v186, v185, v186, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v183.h, v74.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v189, v184, v189, 0x7fff
	v_mov_b32_e32 v158, v69
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v183.l, v180.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v185.h, 0x7fff, v186.h, s10
	v_cmp_o_f32_e64 s10, v184, v184
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v184.l, v182.h
	v_mov_b16_e64 v184.h, v74.l
	v_and_b32_e32 v183, 1, v183
	v_cmp_o_f32_e64 s8, v180, v180
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v185.l, 0x7fff, v189.h, s10
	ds_store_2addr_b32 v118, v188, v191 offset1:8
	ds_store_2addr_b32 v118, v187, v185 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v184, 1, v184
	v_add3_u32 v183, v180, v183, 0x7fff
	v_mov_b16_e64 v183.l, v179.h
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v184, v182, v184, 0x7fff
	v_cndmask_b16 v180.h, 0x7fff, v183.h, s8
	v_cmp_o_f32_e64 s8, v182, v182
	v_mov_b16_e64 v182.l, v181.h
	v_mov_b16_e64 v182.h, v74.l
	v_mov_b16_e64 v183.h, v74.l
	v_mov_b32_e32 v172, v162
	v_cndmask_b16 v180.l, 0x7fff, v184.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v182, 1, v182
	v_and_b32_e32 v183, 1, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v182, v181, v182, 0x7fff
	v_add3_u32 v183, v179, v183, 0x7fff
	v_mov_b16_e64 v182.l, v177.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v181.h, 0x7fff, v182.h, s6
	v_cmp_o_f32_e64 s6, v179, v179
	v_mov_b16_e64 v179.l, v178.h
	v_mov_b16_e64 v179.h, v74.l
	v_mov_b16_e64 v182.h, v74.l
	v_cndmask_b16 v181.l, 0x7fff, v183.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v179, 1, v179
	v_and_b32_e32 v182, 1, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v179, v178, v179, 0x7fff
	v_add3_u32 v182, v177, v182, 0x7fff
	v_mov_b16_e64 v178.l, v175.h
	v_mov_b16_e64 v178.h, v74.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v183.h, 0x7fff, v179.h, s4
	v_cmp_o_f32_e64 s4, v177, v177
	v_mov_b16_e64 v177.l, v176.h
	v_mov_b16_e64 v177.h, v74.l
	v_cndmask_b16 v183.l, 0x7fff, v182.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v74, 1, v177
	v_and_b32_e32 v177, 1, v178
	v_permlanex16_b32 v178, v181, s46, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v182, v183, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v176, v74, 0x7fff
	v_add3_u32 v177, v175, v177, 0x7fff
	v_permlanex16_b32 v176, v180, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v179, v182, v183, v119
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s2
	v_cmp_o_f32_e64 s2, v175, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v175, v176, v180, v119
	v_perm_b32 v176, v176, v180, v120
	v_perm_b32 v180, v182, v183, v120
	v_cndmask_b16 v74.l, 0x7fff, v177.h, s2
	v_perm_b32 v177, v178, v181, v119
	v_perm_b32 v178, v178, v181, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v184, v74, s46, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v181, v184, v74, v119
	v_perm_b32 v182, v184, v74, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v74, 0, v117
	ds_load_b128 v[183:186], v74
	ds_load_b128 v[191:194], v74 offset:512
	ds_load_b128 v[199:202], v74 offset:1024
	ds_load_b128 v[207:210], v74 offset:1536
	ds_load_b128 v[187:190], v144
	ds_load_b128 v[195:198], v144 offset:512
	ds_load_b128 v[203:206], v144 offset:1024
	ds_load_b128 v[211:214], v144 offset:1536
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v73, v160, v174
	v_mov_b32_e32 v174, v164
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v160, v73
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[183:190], v[175:182], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[191:198], v[175:182], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[199:206], v[175:182], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[207:214], v[175:182], v[1:8]
	v_mov_b32_e32 v175, v165
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_19
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s40, s42
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v161, s40, v78
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v66, s2, v79, 1
	v_mov_b16_e32 v74.h, 0
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s4, s45, s40
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v71, 0, v107
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v96
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v104
	v_mov_b16_e32 v74.l, v74.h
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[67:70], v66, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v65
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s10, s0, s2
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[67:70]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[176:179], v71
	ds_load_b128 v[180:183], v121
	ds_load_b128 v[184:187], v122
	ds_load_b128 v[188:191], v123
	ds_load_b128 v[192:195], v124
	ds_load_b128 v[196:199], v125
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
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
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[200:203], v126
	ds_load_b128 v[204:207], v127
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[176:183], v[57:64], v[66:73]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[184:191], v[49:56], v[66:73]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[192:199], v[41:48], v[66:73]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[200:207], v[33:40], v[66:73]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v75, s4, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s2, s22, v75
	v_add_co_ci_u32_e64 v76, null, s23, v76, s2
	global_load_d16_u8 v74, v[75:76], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v97
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v105
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s0, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s4, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s2, s22, v75
	v_add_co_ci_u32_e64 v76, null, s23, v76, s2
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v75.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v98
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_and_b32 s12, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s12
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s2, s22, v76
	v_add_co_ci_u32_e64 v77, null, s23, v77, s2
	global_load_d16_hi_u8 v75, v[76:77], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v99
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v108
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s0, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s13
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s2, s22, v76
	v_add_co_ci_u32_e64 v77, null, s23, v77, s2
	global_load_d16_u8 v75, v[76:77], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v76.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v100
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v76.h, v76.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_and_b32 s14, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s14
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v77, s4, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v77
	v_add_co_u32 v162, s2, s22, v77
	v_add_co_ci_u32_e64 v163, null, s23, v163, s2
	global_load_d16_hi_u8 v76, v[162:163], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v101
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v110
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s0, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s15
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v77, s4, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v77
	v_add_co_u32 v162, s2, s22, v77
	v_add_co_ci_u32_e64 v163, null, s23, v163, s2
	global_load_d16_u8 v76, v[162:163], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v77.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v77.h, v77.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_and_b32 s16, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s16
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s4, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s2, s22, v162
	v_add_co_ci_u32_e64 v163, null, s23, v163, s2
	global_load_d16_hi_u8 v77, v[162:163], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v161, v103
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v161, v112
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s0, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s17
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v161, s4, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v162, 31, v161
	v_add_co_u32 v161, s2, s22, v161
	v_add_co_ci_u32_e64 v162, null, s23, v162, s2
	global_load_d16_u8 v77, v[161:162], off
	s_branch .LBB0_2
.LBB0_19:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v34, 8, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v33, 4, v33
	v_and_b32_e32 v0, 0x80, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v93, v78
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 4, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v0, 0, v33, v0
	v_add_nc_u32_e32 v33, 0, v92
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s33, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s19, v36
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v33, v[66:69]
	ds_store_b128 v33, v[70:73] offset:128
	v_add3_u32 v0, v0, v34, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s35, v36
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v37, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	v_or_b32_e32 v33, 32, v35
	v_or_b32_e32 v34, 16, v35
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v49, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v46, null, v37, v37, v29
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v47, null, v37, v37, v30
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_fma_f32 v56, -v38, v48, 1.0
	v_fma_f32 v57, -v40, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v58, -v42, v50, 1.0
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_div_scale_f32 v43, s2, v27, v37, v27
	v_rcp_f32_e32 v55, v47
	v_fma_f32 v59, -v44, v51, 1.0
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_fmac_f32 v49, v57, v49
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v45, s3, v28, v37, v28
	v_fma_f32 v60, -v46, v52, 1.0
	v_fmac_f32_e32 v51, v59, v51
	v_dual_mul_f32 v57, v39, v48 :: v_dual_mul_f32 v58, v41, v49
	v_mul_f32_e32 v59, v43, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v47, v55, 1.0
	v_dual_mul_f32 v61, v45, v51 :: v_dual_fmac_f32 v52, v60, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v38, v57, v39
	v_fma_f32 v62, -v40, v58, v41
	v_fma_f32 v63, -v42, v59, v43
	v_div_scale_f32 v53, s4, v29, v37, v29
	v_fma_f32 v64, -v44, v61, v45
	v_dual_fmac_f32 v55, v56, v55 :: v_dual_fmac_f32 v58, v62, v49
	v_fmac_f32_e32 v57, v60, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v59, v63, v50 :: v_dual_mul_f32 v56, v53, v52
	v_fmac_f32_e32 v61, v64, v51
	v_div_scale_f32 v54, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v38, v57, v39
	v_fma_f32 v39, -v40, v58, v41
	v_fma_f32 v40, -v42, v59, v43
	v_div_scale_f32 v42, s5, v30, v37, v30
	v_fma_f32 v41, -v44, v61, v45
	v_rcp_f32_e32 v43, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v44, v42, v55
	v_div_fmas_f32 v38, v38, v48, v57
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v49, v58
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v38, v37, v25
	v_div_scale_f32 v38, null, v37, v37, v32
	v_div_fmas_f32 v40, v40, v50, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v39, v37, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v48, v38
	v_div_fmas_f32 v39, v41, v51, v61
	v_fma_f32 v45, -v54, v43, 1.0
	v_fma_f32 v41, -v46, v56, v53
	v_div_fixup_f32 v27, v40, v37, v27
	v_div_scale_f32 v40, s2, v31, v37, v31
	v_div_fixup_f32 v28, v39, v37, v28
	v_fma_f32 v39, -v47, v44, v42
	v_fmac_f32_e32 v43, v45, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v38, v48, 1.0
	v_fmac_f32_e32 v56, v41, v52
	v_div_scale_f32 v41, null, v37, v37, v17
	v_fmac_f32_e32 v44, v39, v55
	v_dual_mul_f32 v39, v40, v43 :: v_dual_fmac_f32 v48, v45, v48
	v_div_scale_f32 v45, s3, v32, v37, v32
	v_fma_f32 v46, -v46, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v47, v44, v42
	v_fma_f32 v47, -v54, v39, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v45, v48
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v41
	v_div_fmas_f32 v46, v46, v52, v56
	v_div_scale_f32 v52, null, v37, v37, v18
	v_fmac_f32_e32 v39, v47, v43
	v_fma_f32 v47, -v38, v50, v45
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v29, v46, v37, v29
	v_div_fmas_f32 v42, v42, v55, v44
	v_rcp_f32_e32 v44, v52
	v_fma_f32 v40, -v54, v39, v40
	v_fmac_f32_e32 v50, v47, v48
	v_div_scale_f32 v47, null, v37, v37, v19
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v51, -v41, v49, 1.0
	v_div_fmas_f32 v39, v40, v43, v39
	v_rcp_f32_e32 v43, v47
	v_fma_f32 v38, -v38, v50, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v52, v44, 1.0
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s4, v17, v37, v17
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v42, v37, v30
	v_fmac_f32_e32 v44, v46, v44
	v_div_fmas_f32 v38, v38, v48, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v47, v43, 1.0
	v_mul_f32_e32 v42, v51, v49
	v_div_scale_f32 v46, null, v37, v37, v20
	v_div_scale_f32 v45, s2, v18, v37, v18
	v_fmac_f32_e32 v43, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v41, v42, v51
	v_div_fixup_f32 v31, v39, v37, v31
	v_mul_f32_e32 v48, v45, v44
	v_div_fixup_f32 v32, v38, v37, v32
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v39, -v52, v48, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v42, v51
	v_div_scale_f32 v41, s3, v19, v37, v19
	v_fmac_f32_e32 v48, v39, v44
	v_div_scale_f32 v51, null, v37, v37, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v46, v40, 1.0
	v_mul_f32_e32 v39, v41, v43
	v_div_fmas_f32 v38, v38, v49, v42
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v42, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v52, v48, v45
	v_fma_f32 v45, -v47, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_div_scale_f32 v49, s4, v20, v37, v20
	v_fma_f32 v54, -v51, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v45, v43
	v_div_fmas_f32 v38, v38, v44, v48
	v_div_scale_f32 v45, s2, v21, v37, v21
	v_fmac_f32_e32 v42, v54, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v50, v53, 1.0
	v_div_fixup_f32 v18, v38, v37, v18
	v_fma_f32 v38, -v47, v39, v41
	v_div_scale_f32 v47, null, v37, v37, v23
	v_dual_fmac_f32 v53, v48, v53 :: v_dual_mul_f32 v52, v49, v40
	v_mul_f32_e32 v41, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v43, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v46, v52, v49
	v_fma_f32 v43, -v51, v41, v45
	v_div_fixup_f32 v19, v38, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v44, v40
	v_div_scale_f32 v44, s5, v22, v37, v22
	v_fmac_f32_e32 v41, v43, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v46, v52, v49
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_mul_f32_e32 v48, v44, v53
	v_div_fmas_f32 v39, v39, v40, v52
	v_fma_f32 v38, -v51, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v50, v48, v44
	v_div_fixup_f32 v20, v39, v37, v20
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_scale_f32 v39, s3, v23, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v43, v53
	v_div_fmas_f32 v38, v38, v42, v41
	v_fmac_f32_e32 v46, v52, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v49, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v50, v48, v44
	v_div_scale_f32 v44, s2, v24, v37, v24
	v_mul_f32_e32 v42, v39, v46
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, null, v37, v37, v9
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v47, v42, v39
	v_div_scale_f32 v51, null, v37, v37, v10
	v_rcp_f32_e32 v45, v43
	v_mul_f32_e32 v50, v44, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v42, v48, v46
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_div_fixup_f32 v21, v38, v37, v21
	v_fma_f32 v38, -v49, v50, v44
	v_fma_f32 v39, -v47, v42, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v43, v45, 1.0
	v_fmac_f32_e32 v50, v38, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v38, s4, v9, v37, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v48, v45
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v52, -v51, v41, 1.0
	v_div_fmas_f32 v39, v39, v46, v42
	v_fma_f32 v42, -v49, v50, v44
	v_div_scale_f32 v46, s3, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v52, v41
	v_div_scale_f32 v53, null, v37, v37, v12
	v_mul_f32_e32 v44, v38, v45
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v54, v46, v41
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v55, v53
	v_div_fmas_f32 v40, v42, v40, v50
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	v_fma_f32 v42, -v51, v54, v46
	v_fma_f32 v52, -v43, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v49, v48
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v54, v42, v41
	v_div_scale_f32 v42, null, v37, v37, v13
	v_fma_f32 v39, -v47, v50, v49
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v38, -v43, v44, v38
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s2, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v37, v37, v14
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	v_mul_f32_e32 v44, v40, v55
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v47, v45
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v48, v55
	v_div_fixup_f32 v10, v41, v37, v10
	v_mul_f32_e32 v38, v46, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v53, v44, v40
	v_div_fixup_f32 v11, v43, v37, v11
	v_fma_f32 v48, -v42, v38, v46
	v_div_scale_f32 v43, null, v37, v37, v15
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	v_div_fmas_f32 v40, v40, v55, v44
	v_fmac_f32_e32 v38, v48, v39
	v_rcp_f32_e32 v49, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v42, -v45, v44, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fma_f32 v46, -v43, v49, 1.0
	v_rcp_f32_e32 v50, v48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v50, 1.0
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s3, v16, v37, v16
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v37, v37, v3
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v44, -v43, v45, v40
	v_mul_f32_e32 v47, v38, v50
	v_div_scale_f32 v53, s4, v1, v37, v1
	v_fma_f32 v54, -v46, v52, 1.0
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_mul_f32_e32 v56, v53, v42
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v2, v37, v2
	v_div_fixup_f32 v14, v41, v37, v14
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v44, -v51, v55, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s2, v3, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v44, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v40, v37, v15
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v49, null, v37, v37, v8
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v51, v41, v44
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v51, v49
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_scale_f32 v42, null, v37, v37, v7
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fma_f32 v55, -v49, v51, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v38, v41 :: v_dual_fmac_f32 v51, v55, v51
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v37, v6
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s4, v7, v37, v7
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v52, -v39, v54, v38
	v_div_scale_f32 v55, s5, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v56, v50, v44 :: v_dual_mul_f32 v57, v53, v46
	v_fmac_f32_e32 v54, v52, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v45, v44 :: v_dual_fmac_f32 v57, v52, v46
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v58, v39, v51
	v_div_fmas_f32 v38, v38, v41, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v49, v58, v55
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v36, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v37
	v_add_nc_u32_e32 v38, 16, v37
	v_cndmask_b32_e32 v39, 0x80000000, v37, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v25, v39, s[20:23], 0 offen
	buffer_store_b32 v26, v35, s[20:23], 0 offen
	buffer_store_b32 v27, v38, s[20:23], 0 offen
	v_add_nc_u32_e32 v25, 24, v37
	v_add_nc_u32_e32 v26, 32, v37
	v_add_nc_u32_e32 v27, 40, v37
	v_add_nc_u32_e32 v35, 48, v37
	v_add_nc_u32_e32 v38, 56, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v27, s[20:23], 0 offen
	buffer_store_b32 v31, v35, s[20:23], 0 offen
	buffer_store_b32 v32, v38, s[20:23], 0 offen
	v_add_lshl_u32 v25, v36, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v37
	v_add_nc_u32_e32 v27, 0x50, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[20:23], 0 offen
	buffer_store_b32 v18, v26, s[20:23], 0 offen
	buffer_store_b32 v19, v27, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v37
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s35, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[20:23], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v37
	v_add_nc_u32_e32 v20, 0x78, v37
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[20:23], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[20:23], 0 offen
	buffer_store_b32 v24, v20, s[20:23], 0 offen
	buffer_store_b32 v9, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[20:23], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	buffer_store_b32 v14, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_lshl_u32 v0, v36, v0, 2
	v_add_nc_u32_e32 v11, 0xc8, v37
	v_add_nc_u32_e32 v12, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v16, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v0, s[20:23], 0 offen
	buffer_store_b32 v2, v11, s[20:23], 0 offen
	buffer_store_b32 v3, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v37
	v_add_nc_u32_e32 v1, 0xe0, v37
	v_add_nc_u32_e32 v2, 0xe8, v37
	v_add_nc_u32_e32 v3, 0xf0, v37
	v_add_nc_u32_e32 v9, 0xf8, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[20:23], 0 offen
	buffer_store_b32 v5, v1, s[20:23], 0 offen
	buffer_store_b32 v6, v2, s[20:23], 0 offen
	buffer_store_b32 v7, v3, s[20:23], 0 offen
	buffer_store_b32 v8, v9, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp172:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 215
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12212
; TotalNumSgprs: 49
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 215
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
