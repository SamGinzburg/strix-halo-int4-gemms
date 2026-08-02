	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x5c
	s_load_b32 s14, s[0:1], 0x80
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v49, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v92, 3, v0
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
	v_or_b32_e32 v4, s33, v92
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v74, 1, v0
	v_dual_mov_b32 v5, v8 :: v_dual_lshlrev_b32 v50, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 0x60, v0
	v_dual_mov_b32 v14, v8 :: v_dual_and_b32 v91, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[79:80], null, s22, v92, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s4, s22, 4
	s_lshl_b32 s5, s22, 5
	s_mul_i32 s6, s22, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s22, s19, v[79:80]
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v78, 15, v0
	v_dual_mov_b32 v16, v8 :: v_dual_and_b32 v93, 0x70, v0
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v13, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s4, 1
	v_add_lshl_u32 v4, v2, s5, 1
	v_add_lshl_u32 v2, v2, s6, 1
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s33, s12
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
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s33, s13
	v_mov_b32_e32 v3, v8
	s_add_i32 s2, s2, s14
	v_dual_mov_b32 v12, v8 :: v_dual_and_b32 v51, 0x70, v74
	s_add_i32 s2, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s14
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v50, v50, v51
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	v_mov_b32_e32 v4, v8
	s_lshr_b32 s5, s5, 28
	v_mov_b32_e32 v2, v8
	s_add_i32 s2, s2, s5
	v_dual_mov_b32 v1, v8 :: v_dual_add_nc_u32 v96, 0, v50
	v_mov_b32_e32 v11, v8
	v_dual_mov_b32 v10, v8 :: v_dual_lshlrev_b32 v95, 4, v49
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
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v94, 1, v65
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v90, 1, v91
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s41, s2, -16
	v_cmp_eq_u32_e64 s2, 0, v91
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s40, s4, 0x7ffffff0
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v96, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v96, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v96, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[45:48] offset:6144
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
	v_lshrrev_b32_e32 v66, 4, v93
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s4, s4, 28
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x8
	s_add_i32 s15, s3, s4
	s_load_b128 s[4:7], s[0:1], 0x64
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s15, -16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 8, v66
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s16, s3, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v68, 16, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s16, 0x10007
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v69, 24, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s0, s16, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s0, 0x80000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v67
	v_lshl_or_b32 v110, v78, 7, v95
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v70, 32, v66
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s33, v68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s15, s15, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s0, s0, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v69
	v_dual_mov_b32 v22, 0x5410 :: v_dual_add_nc_u32 v9, s14, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s14, v2
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s3, s15, s0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v1, v65, 6, v110
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v70
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s14, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 40, v66
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s14, v4
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v98, s12, v2
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v106, s13, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v2, 0x70, v1, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v5, s14, v5
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v99, s12, v3
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v107, s13, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x60, v1, 0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s33, v71
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v100, s12, v4
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v108, s13, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v4, 0x50, v1, 0
	ds_load_b128 v[37:40], v2
	ds_load_b128 v[33:36], v3
	v_xad_u32 v2, v1, 48, 0
	v_and_b32_e32 v18, 60, v74
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v101, s12, v5
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v109, s13, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, v1, 64, 0
	v_xad_u32 v3, v1, 32, 0
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[41:44], v5
	v_xad_u32 v4, v1, 16, 0
	ds_load_b128 v[53:56], v2
	ds_load_b128 v[49:52], v3
	v_lshlrev_b32_e32 v2, 2, v65
	v_lshrrev_b32_e32 v5, 5, v65
	v_xor_b32_e32 v10, 64, v110
	v_lshrrev_b32_e32 v21, 3, v65
	v_lshl_or_b32 v18, v65, 4, v18
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v6, s14, v6
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v11, 0x50, v110
	v_lshlrev_b32_e32 v16, 2, v93
	v_add_nc_u32_e32 v125, 0, v10
	v_mov_b32_e32 v27, v65
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v102, s12, v6
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v111, s13, v6
	v_and_b32_e32 v6, 1, v0
	v_mov_b32_e32 v10, v65
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[57:60], v1
	v_and_b32_e32 v4, 14, v0
	v_dual_mov_b32 v23, 0x7632 :: v_dual_lshlrev_b32 v80, 2, v78
	v_lshlrev_b32_e32 v20, 5, v6
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v126, 0, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v19, 1, v4
	v_mov_b32_e32 v11, v65
	v_lshl_or_b32 v16, v4, 8, v16
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v97, s12, v9
	v_dual_mov_b32 v32, v65 :: v_dual_add_nc_u32 v105, s13, v9
	v_lshl_or_b32 v5, v6, 2, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v116, v16, v20, v19
	v_cndmask_b32_e64 v20, 0x3276, v23, s2
	v_mov_b32_e32 v23, v65
	v_mul_u32_u24_e32 v9, 0x48, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 56, v66
	v_xor_b32_e32 v18, v18, v21
	v_lshrrev_b32_e32 v21, 2, v93
	v_or_b32_e32 v72, 48, v66
	v_or3_b32 v115, v9, v5, v90
	v_bfe_i32 v9, v0, 0, 1
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v8, s33, v73
	v_xor_b32_e32 v1, 16, v110
	v_cndmask_b32_e64 v19, 0x1054, v22, s2
	v_xor_b32_e32 v14, 48, v115
	v_and_b32_e32 v9, 0x90, v9
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v8, s14, v8
	v_lshlrev_b32_e32 v22, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v132, 0, v14
	v_mov_b32_e32 v14, v65
	v_xor_b32_e32 v9, v9, v21
	v_xor_b32_e32 v21, 0x70, v115
	.loc	1 951 47 is_stmt 1              ; attention.py:951:47
	v_subrev_nc_u32_e32 v104, s12, v8
	v_dual_mov_b32 v24, v65 :: v_dual_add_nc_u32 v113, s13, v8
	v_lshrrev_b32_e32 v8, 2, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v136, 0, v21
	v_mov_b32_e32 v21, v65
	v_lshl_or_b32 v2, v78, 3, v2
	v_lshl_add_u32 v4, v4, 7, 0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s33, v72
	v_xor_b32_e32 v3, 32, v110
	v_xor_b32_e32 v16, 0x60, v115
	v_xor_b32_e32 v2, v2, v94
	v_add_nc_u32_e32 v119, v4, v9
	v_add_nc_u32_e32 v122, 0, v1
	v_xor_b32_e32 v1, 12, v116
	v_mov_b32_e32 v9, 0
	v_or_b32_e32 v114, v2, v8
	v_xor_b32_e32 v2, 0x60, v110
	v_lshl_or_b32 v117, v6, 6, v18
	v_lshl_or_b32 v6, v19, 8, v19
	v_lshl_or_b32 v18, v20, 8, v20
	v_and_b32_e32 v19, 0x160, v22
	v_bfe_i32 v20, v0, 2, 1
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v7, s14, v7
	v_xor_b32_e32 v5, 0x70, v110
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v18, 0x760076, v18
	v_xor_b32_e32 v4, 8, v116
	v_add_nc_u32_e32 v123, 0, v3
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_add_nc_u32 v127, 0, v2
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v135, 0, v16
	v_xor_b32_e32 v2, 16, v116
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v139, 0, v1
	v_xor_b32_e32 v1, 20, v116
	v_xor_b32_e32 v3, 28, v116
	v_mov_b32_e32 v16, v65
	v_and_or_b32 v118, 0x90, v20, v19
	.loc	1 903 13                        ; attention.py:903:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s7, v67, v[78:79]
	v_mad_u64_u32 v[82:83], null, s7, v68, v[78:79]
	v_mad_u64_u32 v[83:84], null, s7, v69, v[78:79]
	v_mad_u64_u32 v[84:85], null, s7, v70, v[78:79]
	v_mad_u64_u32 v[85:86], null, s7, v71, v[78:79]
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v103, s12, v7
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v112, s13, v7
	v_xor_b32_e32 v7, 48, v110
	v_xor_b32_e32 v8, 0x240, v114
	v_xor_b32_e32 v12, 16, v115
	v_xor_b32_e32 v13, 32, v115
	v_xor_b32_e32 v15, 64, v115
	v_xor_b32_e32 v17, 0x50, v115
	v_xor_b32_e32 v19, 4, v116
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v128, 0, v5
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v138, 0, v4
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_add_nc_u32 v140, 0, v2
	v_xor_b32_e32 v2, 24, v116
	v_xor_b32_e32 v4, 0x810, v117
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v141, 0, v1
	v_xor_b32_e32 v1, 16, v118
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_add_nc_u32 v143, 0, v3
	v_mov_b32_e32 v3, v65
	v_lshl_or_b32 v6, v6, 4, v6
	v_mov_b32_e32 v5, v65
	v_lshl_or_b32 v18, v18, 4, v18
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[86:87], null, s7, v72, v[78:79]
	v_mad_u64_u32 v[87:88], null, s7, v73, v[78:79]
	v_mad_u64_u32 v[88:89], null, s7, v66, v[78:79]
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s6, s6, s16
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s5, s15
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s23, v80
	v_and_b32_e32 v120, 0x5040504, v6
	v_and_b32_e32 v121, 0x7060706, v18
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v124, 0, v7
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v129, 0, v8
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_add_nc_u32 v130, 0, v12
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v131, 0, v13
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v133, 0, v15
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v134, 0, v17
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v137, 0, v19
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_add_nc_u32 v142, 0, v2
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v144, 0, v4
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v145, 0, v1
	v_mov_b32_e32 v26, v65
	v_mov_b32_e32 v28, v65
	v_mov_b32_e32 v31, v65
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v20, v65
	v_mov_b32_e32 v22, v65
	v_mov_b32_e32 v12, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	v_lshl_or_b32 v146, s3, 10, v66
	v_dual_mov_b32 v89, 0xff800000 :: v_dual_mov_b32 v174, 0xff800000
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_mov_b32 v176, 0xff800000
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s43, s4, 0x3fb8aa3b
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s4, s7, s33
	s_add_i32 s45, s6, s5
	s_and_b32 s9, s9, 0xffff
	s_mov_b64 s[34:35], s[30:31]
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s42, s3, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s44, s3, 7
	s_add_i32 s45, s45, s4
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
	v_dual_mul_f32 v163, s43, v66 :: v_dual_mul_f32 v164, s43, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s8, 0, v77.h
	v_and_b16 v66.l, 0xff, v77.l
	v_and_b16 v162.l, 0xff, v74.l
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
	v_cmp_ne_u16_e64 s2, 0, v162.l
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
	v_dual_mul_f32 v165, s43, v68 :: v_dual_mul_f32 v166, s43, v69
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
	v_cndmask_b32_e64 v162, 0, 1, s17
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s7, 0, v76.l
	v_and_b16 v74.h, 0xff, v74.h
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v66.l, v67.l, v66.l
	v_add_nc_u32_e32 v67, 0, v114
	s_and_b32 s15, s15, s7
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s3, 0, v74.h
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v77, 0, 1, s15
	s_and_b32 s13, s13, s5
	ds_store_b32 v67, v66
	v_mov_b16_e64 v66.l, v162.l
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
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v66.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v76.l
	v_mov_b16_e32 v67.l, v69.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v74.l, 0
	.loc	1 962 25                        ; attention.py:962:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 990 39                        ; attention.py:990:39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v196.l, v74.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v197.h, v74.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v148, v148, v148
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v66.l, v67.l, v66.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v147, v147, v147
	v_dual_max_f32 v89, v89, v89 :: v_dual_max_f32 v150, v150, v150
	v_max_f32_e32 v153, v153, v153
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b32 v129, v66
	v_add_nc_u32_e32 v66, 0, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v130
	ds_load_u8_d16 v67, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v132
	ds_load_u8_d16 v68, v133
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v134
	ds_load_u8_d16 v69, v135
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v69, v136
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v149, v149, v149 :: v_dual_max_f32 v152, v152, v152
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s8, 1, v66.l
	v_and_b16 v66.l, 1, v66.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v177, 0xff800000, v163, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s9, 1, v66.l
	v_and_b16 v66.l, 1, v67.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v178, 0xff800000, v164, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v66.l
	v_and_b16 v66.l, 1, v67.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v179, 0xff800000, v165, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v66.l
	v_and_b16 v66.l, 1, v68.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v180, 0xff800000, v166, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s4, 1, v66.l
	v_and_b16 v66.l, 1, v68.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v68, 0, v117
	v_cndmask_b32_e64 v182, 0xff800000, v70, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s5, 1, v66.l
	v_and_b16 v66.l, 1, v69.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v183, 0xff800000, v71, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s2, 1, v66.l
	v_and_b16 v66.l, 1, v69.h
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v181, v180, v182, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v184, 0xff800000, v72, s2
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s3, 1, v66.l
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v66, 0, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v185, 0xff800000, v73, s3
	ds_store_b32 v66, v177
	ds_store_b32 v137, v178
	ds_store_b32 v138, v179
	ds_store_b32 v139, v180
	ds_store_b32 v140, v182
	ds_store_b32 v141, v183
	ds_store_b32 v142, v184
	ds_store_b32 v143, v185
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v68 offset1:32
	ds_load_2addr_b32 v[68:69], v68 offset0:64 offset1:96
	ds_load_2addr_b32 v[70:71], v144 offset1:32
	ds_load_2addr_b32 v[72:73], v144 offset0:64 offset1:96
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_dual_max_f32 v186, v184, v185 :: v_dual_mov_b32 v75, v66
	v_max_f32_e32 v76, v66, v66
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v77, v70, v70 :: v_dual_max_f32 v162, v67, v67
	v_max_f32_e32 v163, v71, v71
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v68, v68
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v165, v72, v72 :: v_dual_max_f32 v166, v69, v69
	v_max_f32_e32 v167, v73, v73
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v76, v75
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v76
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v76
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v75, v75, v76 :: v_dual_mov_b32 v76, v70
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v76, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v76
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v76
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	v_dual_max_f32 v76, v76, v77 :: v_dual_max_f32 v89, v89, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v77, v76 :: v_dual_sub_f32 v66, v66, v89
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v66, v66
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v76, v76, v77 :: v_dual_mov_b32 v77, v67
.Ltmp21:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s10
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s10, s40, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v162, v77
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v162, v162 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v162
.Ltmp26:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v147, v147, v76 :: v_dual_mov_b32 v162, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v70, v147
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v70, v70
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v77, v77, v162
.Ltmp30:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v70, 0, v70, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v162, v77
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	v_dual_max_f32 v77, v77, v162 :: v_dual_mov_b32 v162, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v162, v162 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v162, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v163, v162
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v162, v163
.Ltmp37:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v148, v148, v77 :: v_dual_mov_b32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v67, v148
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v67, v67
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v162, v163
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v162, v162, v163 :: v_dual_mov_b32 v163, v68
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	v_max_f32_e32 v163, v164, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v163
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v163, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v149, v149, v162 :: v_dual_mov_b32 v164, v163
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_dual_max_f32 v163, v163, v164 :: v_dual_mov_b32 v164, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v150, v150, v163
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v68, v150
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v164, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v68, v68
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v164, v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
.Ltmp59:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v165, v165 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v164, v165
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v164, v165
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v165, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v165, v165 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v164, v164, v165 :: v_dual_mov_b32 v165, v69
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v165, v165 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v165, v165, v165
	v_max_f32_e32 v165, v166, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
	v_mov_b32_dpp v166, v166 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v165, v165, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v165, v165, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v166, v165
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v165, v165, v166
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v166, v73 :: v_dual_max_f32 v151, v151, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v152, v152, v165
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v166, v166 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v151, v151, v164 :: v_dual_max_f32 v166, v166, v166
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v72, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v167, v166
.Ltmp79:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v167, v166
	v_mov_b32_dpp v167, v167 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v72, 0, v72, s15
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v166, v166, v167
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v166, v166, v167
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v166, v166, v167
	v_max3_f32 v167, v177, v178, v179
	v_max3_f32 v167, v167, v181, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v181, v167, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v167, v168, v167, v181
	v_max_f32_e32 v181, v169, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v185, v185, v167
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v75, v181, v75
	v_max_f32_e32 v181, v170, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v76, v181, v76 :: v_dual_max_f32 v181, v171, v171
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v187, v170, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v77, v181, v77
	v_max_f32_e32 v181, v172, v172
	v_max_f32_e32 v153, v153, v166
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v188, v171, v77
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v162, v181, v162
	v_max_f32_e32 v181, v173, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v188, v188
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v163, v181, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v181, v174, v174 :: v_dual_sub_f32 v190, v173, v163
	v_dual_max_f32 v164, v181, v164 :: v_dual_max_f32 v181, v175, v175
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v189, v172, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v190, v190
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v165, v181, v165
	v_max_f32_e32 v181, v176, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v189, v189
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v192, v175, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v166, v181, v166 :: v_dual_sub_f32 v181, v168, v167
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v186, v169, v75 :: v_dual_sub_f32 v191, v174, v164
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v192, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v193, v176, v166
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v181, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v186, v186
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v181, 0, v181, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v169
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v181
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v168, 0, v186, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v170
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v186, v182, v167 :: v_dual_mul_f32 v27, v27, v181
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v181
	v_mul_f32_e32 v31, v31, v181
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v169, 0, v187, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v171
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v181
	v_mul_f32_e32 v19, v19, v181
	v_mul_f32_e32 v21, v21, v181
	v_mul_f32_e32 v23, v23, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v170, 0, v188, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v172
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v188, v184, v167
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v191, v191
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v181
	v_mul_f32_e32 v9, v9, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v171, 0, v189, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v173
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v181
	v_mul_f32_e32 v12, v12, v181
	v_mul_f32_e32 v13, v13, v181
	v_mul_f32_e32 v15, v15, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v172, 0, v190, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v174
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v181
	v_mul_f32_e32 v3, v3, v181
	v_mul_f32_e32 v5, v5, v181
	v_mul_f32_e32 v7, v7, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v173, 0, v191, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v175
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v181
	v_mul_f32_e32 v26, v26, v181
	v_mul_f32_e32 v28, v28, v181
	v_mul_f32_e32 v30, v30, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v174, 0, v192, s18
	v_cmp_neq_f32_e64 s18, 0xff800000, v176
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v176, v177, v167
	v_sub_f32_e32 v177, v178, v167
	v_sub_f32_e32 v178, v179, v167
	v_sub_f32_e32 v179, v180, v167
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v181
	v_mul_f32_e32 v18, v18, v181
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v184, v177
	v_exp_f32_e32 v177, v185
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v185, 0, v67, s12
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp90:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v180, v178
	v_exp_f32_e32 v178, v186
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v181
	v_mul_f32_e32 v10, v10, v181
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v181
	v_mul_f32_e32 v14, v14, v181
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v177, 0, v177, s3
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v181
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp94:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v180, 0, v180, s6
	v_cndmask_b32_e64 v178, 0, v178, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp97:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v193, v193
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v71, v71, v149
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v175, 0, v193, s18
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp101:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v71, 0, v71, s13
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v66, v154, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v168, v167
	v_mov_b32_e32 v154, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v70, v67
.Ltmp109:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v186, 0, v69, s16
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	v_mov_b32_e32 v69, v185
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v185, v69
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
.Ltmp123:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v182, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v187, v183, v167
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v183, v176
	v_exp_f32_e32 v176, v188
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v70, v69, v70 :: v_dual_mov_b32 v69, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v179, v187
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v182, 0, v182, s7
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v70, v156, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v183, 0, v183, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v182, v182
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v176, 0, v176, s2
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s2, v177, v177
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v71, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp131:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v179, 0, v179, s5
	v_mov_b32_e32 v156, v70
	v_dual_mov_b32 v170, v76 :: v_dual_mov_b32 v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s4, v179, v179
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v71
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v71, v69, v71
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
.Ltmp139:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v181
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v181, 0, v184, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v184.h, v74.l
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v71, v157, v171
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v171, v77
.Ltmp141:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v184.l, v181.h
	v_cmp_o_f32_e64 s8, v181, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v157, v71 :: v_dual_add_f32 v68, v68, v69
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v69, v68 :: v_dual_and_b32 v184, 1, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v184, v181, v184, 0x7fff
	v_mov_b16_e64 v184.l, v180.h
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v181.h, 0x7fff, v184.h, s8
	v_mov_b16_e64 v184.h, v74.l
	v_cmp_o_f32_e64 s8, v183, v183
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v69, v68 :: v_dual_and_b32 v184, 1, v184
.Ltmp148:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v184, v180, v184, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v69, v72 :: v_dual_fmac_f32 v68, v158, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v172, v162
	v_mov_b32_e32 v158, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v72, v69
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v69, v69, v72 :: v_dual_mov_b32 v72, v186
.Ltmp161:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v186, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp164:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v73, 0, v73, s17
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v185, v185 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v72
	v_mov_b32_dpp v185, v185 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v185
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v72, v72, v185 :: v_dual_mov_b32 v185, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp171:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v72, v160, v174
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v185, v185 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v174, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v160, v72 :: v_dual_add_f32 v73, v73, v185
	v_mov_b32_e32 v185, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v185, v185 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v73
	v_mov_b32_dpp v185, v185 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v185
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v185
.Ltmp178:
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v185, s10, v146
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s10, s40, 4
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s40, s40, 16
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s10, s10, s44
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v73, v161, v175
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[185:186], null, v185, s23, v[80:81]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s10, s10, s23
	v_mov_b32_e32 v175, v165
	v_mov_b32_e32 v161, v73
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s40, s41
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	buffer_load_b32 v190, v185, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v185.l, v190.h
	v_lshrrev_b32_e32 v187, 24, v190
	v_bfe_i32 v191, v190, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v191.h, v74.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v192, 8, v190
	v_bfe_i32 v194, v185, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v185, s10, v80, 1
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v186, v187, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v187.h, 4, v190.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v193, v192, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v192.h, v74.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v193.h, v74.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v187.h, v187.h, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[188:189], v185, s[28:31], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v74.h, v188.l
	v_and_b32_e32 v195, 0xffff0000, v188
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v188.l, v190.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v196.h, v189.l
	v_and_b32_e32 v185, 0xffff0000, v189
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v189.l, v191.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v188.h, v187.h, -16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v188.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v189.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v189.l, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v188.l, v188.l, v189.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v189.l, v187.h, v188.h, s10
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v187.h, v192.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v188, v188, 0, 16
	v_bfe_i32 v189, v189, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v187.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v188, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v189, v189
	v_mul_f32_e32 v188, v74, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v189, v74, v189
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v74.h, 4, v192.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v197.l, v188.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v191.l, v189.h
	v_cmp_o_f32_e64 s10, v189, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v74.h, v74.h, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v197, 1, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v191, 1, v191
	v_add3_u32 v197, v188, v197, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v191, v189, v191, 0x7fff
	v_cndmask_b16 v189.h, 0x7fff, v191.h, s10
	v_cmp_o_f32_e64 s10, v188, v188
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v188.l, v193.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v188.h, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v189.l, 0x7fff, v197.h, s10
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v188.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v188.l, v74.h, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v191.l, v187.h, v188.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v187.h, v190.h, 15
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v188.l, v74.h, v188.l, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v191, v191, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v187.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v188, v188, 0, 16
	v_cvt_f32_i32_e32 v191, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v188, v188
	v_mul_f32_e32 v191, v195, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v188, v195, v188
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v193.l, v191.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v192.l, v188.h
	v_and_b32_e32 v193, 1, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s10, v188, v188
	v_and_b32_e32 v192, 1, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v193, v191, v193, 0x7fff
	v_add3_u32 v192, v188, v192, 0x7fff
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b32_e32 v188, 20, v190
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v188.h, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v192.h, 0x7fff, v192.h, s10
	v_cmp_o_f32_e64 s10, v191, v191
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v74.h, v188.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v188.l, v194.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v190.l, v187.h, v188.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v191.h, v74.l
	v_cndmask_b16 v192.l, 0x7fff, v193.h, s10
	v_mov_b16_e64 v193.h, v74.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v188.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v188.l, v74.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v190, v190, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v188.l, v74.h, v188.l, s10
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v190, v190
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v74.h, 4, v187.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v187.l, v187.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v188, v188, 0, 16
	v_mul_f32_e32 v190, v196, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v187.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v188, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v193.l, v190.h
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v186.h, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v188, v196, v188 :: v_dual_and_b32 v193, 1, v193
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v67, v155, v169
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v187.l, v187.l, v186.h
	v_mov_b32_e32 v169, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v191.l, v188.h
	v_cmp_o_f32_e64 s10, v188, v188
	v_add3_u32 v193, v190, v193, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v187, v187, 0, 16
	v_mov_b32_e32 v155, v67
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v191, 1, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v187, v187
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v191, v188, v191, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v188.h, 0x7fff, v191.h, s10
	v_cmp_o_f32_e64 s10, v190, v190
	v_mov_b16_e64 v190.h, v74.l
	v_cndmask_b16 v188.l, 0x7fff, v193.h, s10
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_gt_i16_e64 s10, 0, v186.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v186.l, v74.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v186.l, v74.h, v186.l, s10
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v186, v186, 0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v186, v186
	v_mul_f32_e32 v186, v185, v186
	v_mul_f32_e32 v185, v185, v187
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v187.h, v74.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v187.l, v186.h
	v_mov_b16_e64 v190.l, v185.h
	v_cmp_o_f32_e64 s10, v186, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v187, 1, v187
	v_and_b32_e32 v190, 1, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v187, v186, v187, 0x7fff
	v_add3_u32 v190, v185, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v186.h, 0x7fff, v187.h, s10
	v_cmp_o_f32_e64 s10, v185, v185
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v185.l, v183.h
	v_mov_b16_e64 v185.h, v74.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v186.l, 0x7fff, v190.h, s10
	ds_store_2addr_b32 v119, v189, v192 offset1:8
	ds_store_2addr_b32 v119, v188, v186 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v185, 1, v185
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v185, v183, v185, 0x7fff
	v_mov_b16_e64 v183.l, v182.h
	v_mov_b16_e64 v183.h, v74.l
	v_cndmask_b16 v181.l, 0x7fff, v185.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v183, 1, v183
	v_add3_u32 v183, v182, v183, 0x7fff
	v_mov_b16_e64 v183.l, v178.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v182.h, 0x7fff, v183.h, s6
	v_cmp_o_f32_e64 s6, v180, v180
	v_mov_b16_e64 v180.l, v179.h
	v_mov_b16_e64 v180.h, v74.l
	v_mov_b16_e64 v183.h, v74.l
	v_cndmask_b16 v182.l, 0x7fff, v184.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v180, 1, v180
	v_and_b32_e32 v183, 1, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v180, v179, v180, 0x7fff
	v_add3_u32 v183, v178, v183, 0x7fff
	v_mov_b16_e64 v179.l, v176.h
	v_mov_b16_e64 v179.h, v74.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v184.h, 0x7fff, v180.h, s4
	v_cmp_o_f32_e64 s4, v178, v178
	v_mov_b16_e64 v178.l, v177.h
	v_mov_b16_e64 v178.h, v74.l
	v_cndmask_b16 v184.l, 0x7fff, v183.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v74, 1, v178
	v_and_b32_e32 v178, 1, v179
	v_permlanex16_b32 v179, v182, s46, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v184, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v177, v74, 0x7fff
	v_add3_u32 v178, v176, v178, 0x7fff
	v_permlanex16_b32 v177, v181, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v180, v183, v184, v120
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s2
	v_cmp_o_f32_e64 s2, v176, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v176, v177, v181, v120
	v_perm_b32 v177, v177, v181, v121
	v_perm_b32 v181, v183, v184, v121
	v_cndmask_b16 v74.l, 0x7fff, v178.h, s2
	v_perm_b32 v178, v179, v182, v120
	v_perm_b32 v179, v179, v182, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v185, v74, s46, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v182, v185, v74, v120
	v_perm_b32 v183, v185, v74, v121
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v74, 0, v118
	ds_load_b128 v[184:187], v74
	ds_load_b128 v[192:195], v74 offset:512
	ds_load_b128 v[200:203], v74 offset:1024
	ds_load_b128 v[208:211], v74 offset:1536
	ds_load_b128 v[188:191], v145
	ds_load_b128 v[196:199], v145 offset:512
	ds_load_b128 v[204:207], v145 offset:1024
	ds_load_b128 v[212:215], v145 offset:1536
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v69, v159, v173
	v_mov_b32_e32 v173, v163
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v159, v69
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[184:191], v[176:183], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[192:199], v[176:183], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[200:207], v[176:183], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[208:215], v[176:183], v[1:8]
	v_mov_b32_e32 v176, v166
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_19
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s40, s42
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v71, 0, v110
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s22
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v66, s2, v79, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v162, s40, v78
	v_mov_b16_e32 v74.h, 0
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s4, s45, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v97
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v105
	v_mov_b16_e32 v74.l, v74.h
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[67:70], v66, s[24:27], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v65
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s10, s0, s2
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[67:70]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[177:180], v71
	ds_load_b128 v[181:184], v122
	ds_load_b128 v[185:188], v123
	ds_load_b128 v[189:192], v124
	ds_load_b128 v[193:196], v125
	ds_load_b128 v[197:200], v126
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
	ds_load_b128 v[201:204], v127
	ds_load_b128 v[205:208], v128
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[177:184], v[57:64], v[66:73]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[185:192], v[49:56], v[66:73]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[193:200], v[41:48], v[66:73]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[201:208], v[33:40], v[66:73]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v75, s4, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s2, s34, v75
	v_add_co_ci_u32_e64 v76, null, s35, v76, s2
	global_load_d16_u8 v74, v[75:76], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v98
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v106
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
	v_add_co_u32 v75, s2, s34, v75
	v_add_co_ci_u32_e64 v76, null, s35, v76, s2
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v75.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v99
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v107
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
	v_add_co_u32 v76, s2, s34, v76
	v_add_co_ci_u32_e64 v77, null, s35, v77, s2
	global_load_d16_hi_u8 v75, v[76:77], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v100
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v108
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
	v_add_co_u32 v76, s2, s34, v76
	v_add_co_ci_u32_e64 v77, null, s35, v77, s2
	global_load_d16_u8 v75, v[76:77], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v76.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v101
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v109
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
	v_ashrrev_i32_e32 v164, 31, v77
	v_add_co_u32 v163, s2, s34, v77
	v_add_co_ci_u32_e64 v164, null, s35, v164, s2
	global_load_d16_hi_u8 v76, v[163:164], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v111
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
	v_ashrrev_i32_e32 v164, 31, v77
	v_add_co_u32 v163, s2, s34, v77
	v_add_co_ci_u32_e64 v164, null, s35, v164, s2
	global_load_d16_u8 v76, v[163:164], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v77.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v103
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v112
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
	v_add_nc_u32_e32 v163, s4, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v164, 31, v163
	v_add_co_u32 v163, s2, s34, v163
	v_add_co_ci_u32_e64 v164, null, s35, v164, s2
	global_load_d16_hi_u8 v77, v[163:164], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s2, v162, v104
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v162, v113
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s0, s2
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s17
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v162, s4, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v163, 31, v162
	v_add_co_u32 v162, s2, s34, v162
	v_add_co_ci_u32_e64 v163, null, s35, v163, s2
	global_load_d16_u8 v77, v[162:163], off
	s_branch .LBB0_2
.LBB0_19:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v34, 8, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v33, 4, v33
	v_and_b32_e32 v0, 0x80, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, v94, v78
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v0, 0, v33, v0
	v_add_nc_u32_e32 v33, 0, v93
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s33, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v35, s19, v35
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v33, v[66:69]
	ds_store_b128 v33, v[70:73] offset:128
	v_add3_u32 v0, v0, v34, v95
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s23, v35
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v36, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v90
	v_or_b32_e32 v33, 32, v90
	v_or_b32_e32 v0, 48, v90
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v36, v36, v26
	v_div_scale_f32 v37, null, v36, v36, v25
	v_div_scale_f32 v41, null, v36, v36, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v39
	v_div_scale_f32 v43, null, v36, v36, v28
	v_rcp_f32_e32 v48, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v41
	v_div_scale_f32 v45, null, v36, v36, v29
	v_div_scale_f32 v46, null, v36, v36, v30
	v_rcp_f32_e32 v51, v43
	v_fma_f32 v58, -v39, v49, 1.0
	v_div_scale_f32 v40, s1, v26, v36, v26
	v_rcp_f32_e32 v52, v45
	v_rcp_f32_e32 v55, v46
	v_fma_f32 v57, -v37, v48, 1.0
	v_fma_f32 v59, -v41, v50, 1.0
	v_fmac_f32_e32 v49, v58, v49
	v_div_scale_f32 v38, vcc_lo, v25, v36, v25
	v_div_scale_f32 v42, s2, v27, v36, v27
	v_fma_f32 v60, -v43, v51, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_mul_f32 v59, v40, v49
	v_fma_f32 v61, -v45, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v60, v51
	v_fma_f32 v57, -v46, v55, 1.0
	v_mul_f32_e32 v58, v38, v48
	v_fma_f32 v63, -v39, v59, v40
	v_mul_f32_e32 v60, v42, v50
	v_div_scale_f32 v54, s5, v30, v36, v30
	v_fmac_f32_e32 v55, v57, v55
	v_fmac_f32_e32 v52, v61, v52
	v_fma_f32 v61, -v37, v58, v38
	v_fmac_f32_e32 v59, v63, v49
	v_fma_f32 v64, -v41, v60, v42
	v_div_scale_f32 v44, s3, v28, v36, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v61, v48
	v_div_scale_f32 v53, s4, v29, v36, v29
	v_fmac_f32_e32 v60, v64, v50
	v_div_scale_f32 v47, null, v36, v36, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v37, v58, v38
	v_fma_f32 v38, -v39, v59, v40
	v_fma_f32 v39, -v41, v60, v42
	v_mul_f32_e32 v41, v54, v55
	v_dual_mul_f32 v62, v44, v51 :: v_dual_mul_f32 v57, v53, v52
	v_div_fmas_f32 v37, v37, v48, v58
	v_rcp_f32_e32 v56, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v43, v62, v44
	v_div_fmas_f32 v38, v38, v49, v59
	v_div_fixup_f32 v25, v37, v36, v25
	v_div_scale_f32 v37, null, v36, v36, v32
	v_fmac_f32_e32 v62, v65, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v38, v36, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v47, v56, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v62, v44
	v_rcp_f32_e32 v43, v37
	v_fmac_f32_e32 v56, v42, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v37, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v43, v42, v43
	v_div_fmas_f32 v39, v39, v50, v60
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v32, v36, v32
	v_div_fmas_f32 v38, v40, v51, v62
	v_fma_f32 v40, -v45, v57, v53
	v_div_fixup_f32 v27, v39, v36, v27
	v_div_scale_f32 v39, s2, v31, v36, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v38, v36, v28
	v_fmac_f32_e32 v57, v40, v52
	v_fma_f32 v38, -v46, v41, v54
	v_div_scale_f32 v40, null, v36, v36, v17
	v_mul_f32_e32 v49, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v45, v57, v53
	v_dual_fmac_f32 v41, v38, v55 :: v_dual_mul_f32 v38, v39, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_div_scale_f32 v51, null, v36, v36, v18
	v_fma_f32 v46, -v46, v41, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v48, -v47, v38, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v44, v44, v52, v57
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v40, v45, 1.0
	v_div_fmas_f32 v41, v46, v55, v41
	v_fmac_f32_e32 v38, v48, v56
	v_rcp_f32_e32 v46, v51
	v_fma_f32 v48, -v37, v49, v42
	v_fmac_f32_e32 v45, v50, v45
	v_div_scale_f32 v50, s4, v17, v36, v17
	v_fma_f32 v39, -v47, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v48, v43
	v_div_scale_f32 v47, null, v36, v36, v19
	v_div_fixup_f32 v29, v44, v36, v29
	v_div_fixup_f32 v30, v41, v36, v30
	v_fma_f32 v44, -v51, v46, 1.0
	v_mul_f32_e32 v41, v50, v45
	v_fma_f32 v37, -v37, v49, v42
	v_rcp_f32_e32 v42, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v46, v44, v46
	v_div_fmas_f32 v38, v39, v56, v38
	v_fma_f32 v39, -v40, v41, v50
	v_div_scale_f32 v48, null, v36, v36, v20
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, s2, v18, v36, v18
	v_div_fmas_f32 v37, v37, v43, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v39, v45
	v_rcp_f32_e32 v39, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v37, v36, v32
	v_fmac_f32_e32 v42, v49, v42
	v_fma_f32 v37, -v40, v41, v50
	v_div_scale_f32 v50, null, v36, v36, v21
	v_div_fixup_f32 v31, v38, v36, v31
	v_div_scale_f32 v40, s3, v19, v36, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v48, v39, 1.0
	v_div_fmas_f32 v37, v37, v45, v41
	v_rcp_f32_e32 v41, v50
	v_div_scale_f32 v45, s4, v20, v36, v20
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, null, v36, v36, v22
	v_div_fixup_f32 v17, v37, v36, v17
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v52, v49
	v_mul_f32_e32 v43, v44, v46
	v_fma_f32 v53, -v50, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v51, v43, v44
	v_fmac_f32_e32 v41, v53, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v43, v38, v46
	v_mul_f32_e32 v38, v40, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v51, v43, v44
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v44, -v47, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v46, v43
	v_fma_f32 v43, -v48, v51, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v42
	v_div_scale_f32 v44, s2, v21, v36, v21
	v_fma_f32 v46, -v49, v52, 1.0
	v_div_fixup_f32 v18, v37, v36, v18
	v_fma_f32 v37, -v47, v38, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v44, v41
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v52, v46, v52
	v_div_scale_f32 v46, null, v36, v36, v23
	v_div_fmas_f32 v37, v37, v42, v38
	v_fma_f32 v42, -v50, v40, v44
	v_fmac_f32_e32 v51, v43, v39
	v_div_scale_f32 v43, s5, v22, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v37, v36, v19
	v_fmac_f32_e32 v40, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v51, v45
	v_mul_f32_e32 v47, v43, v52
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v37, -v50, v40, v44
	v_div_fmas_f32 v38, v38, v39, v51
	v_fma_f32 v42, -v49, v47, v43
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v48, null, v36, v36, v24
	v_div_fmas_f32 v37, v37, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v42, v52
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v39, v48
	v_div_scale_f32 v50, null, v36, v36, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v49, v47, v43
	v_fma_f32 v51, -v46, v45, 1.0
	v_div_fixup_f32 v20, v38, v36, v20
	v_div_scale_f32 v38, s3, v23, v36, v23
	v_div_fmas_f32 v40, v40, v52, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v51, v45
	v_fma_f32 v42, -v48, v39, 1.0
	v_div_scale_f32 v43, s2, v24, v36, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v40, v36, v22
	v_rcp_f32_e32 v40, v50
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, null, v36, v36, v9
	v_div_fixup_f32 v21, v37, v36, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v43, v39
	v_rcp_f32_e32 v44, v42
	v_div_scale_f32 v52, null, v36, v36, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v50, v40, 1.0
	v_mul_f32_e32 v41, v38, v45
	v_fma_f32 v37, -v48, v49, v43
	v_rcp_f32_e32 v54, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v51, v40
	v_fma_f32 v47, -v46, v41, v38
	v_fmac_f32_e32 v49, v37, v39
	v_div_scale_f32 v37, s4, v9, v36, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v47, v45
	v_fma_f32 v47, -v42, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v46, v41, v38
	v_div_scale_f32 v46, null, v36, v36, v11
	v_fmac_f32_e32 v44, v47, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v45, v41
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v41, -v48, v49, v43
	v_div_scale_f32 v45, s3, v10, v36, v10
	v_mul_f32_e32 v43, v37, v44
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v23, v38, v36, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v45, v40
	v_div_fmas_f32 v39, v41, v39, v49
	v_fma_f32 v51, -v42, v43, v37
	v_fma_f32 v48, -v46, v47, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v50, v53, v45
	v_div_fixup_f32 v24, v39, v36, v24
	v_fmac_f32_e32 v43, v51, v44
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, s5, v11, v36, v11
	v_fmac_f32_e32 v53, v41, v40
	v_div_scale_f32 v41, null, v36, v36, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v39, -v52, v54, 1.0
	v_fma_f32 v37, -v42, v43, v37
	v_fma_f32 v42, -v50, v53, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v46, v49, v48
	v_fmac_f32_e32 v54, v39, v54
	v_div_scale_f32 v39, s2, v12, v36, v12
	v_div_fmas_f32 v37, v37, v44, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v49, v38, v47
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v43, v39, v54
	v_div_fmas_f32 v40, v42, v40, v53
	v_fma_f32 v42, -v46, v49, v48
	v_div_scale_f32 v44, null, v36, v36, v14
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v37, v36, v9
	v_div_fmas_f32 v42, v42, v47, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v41, v38, 1.0
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v47, -v52, v43, v39
	v_div_fixup_f32 v10, v40, v36, v10
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s3, v13, v36, v13
	v_fmac_f32_e32 v43, v47, v54
	v_div_fixup_f32 v11, v42, v36, v11
	v_div_scale_f32 v42, null, v36, v36, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v45, v38
	v_fma_f32 v40, -v44, v46, 1.0
	v_fma_f32 v39, -v52, v43, v39
	v_rcp_f32_e32 v48, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v41, v37, v45
	v_fmac_f32_e32 v46, v40, v46
	v_div_scale_f32 v40, s4, v14, v36, v14
	v_div_fmas_f32 v39, v39, v54, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v47, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v43, v40, v46
	v_div_scale_f32 v47, null, v36, v36, v16
	v_div_fixup_f32 v12, v39, v36, v12
	v_fma_f32 v39, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v44, v43, v40
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v39, v38, v37
	v_div_scale_f32 v38, null, v36, v36, v1
	v_fmac_f32_e32 v43, v41, v46
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v36, v36, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v39, s2, v15, v36, v15
	v_div_fixup_f32 v13, v37, v36, v13
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v51, v45
	v_fma_f32 v40, -v44, v43, v40
	v_mul_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v37, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v38, v41, 1.0
	v_div_scale_f32 v37, s3, v16, v36, v16
	v_div_fmas_f32 v40, v40, v46, v43
	v_fma_f32 v43, -v42, v44, v39
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v36, v36, v3
	v_mul_f32_e32 v46, v37, v49
	v_div_scale_f32 v52, s4, v1, v36, v1
	v_fma_f32 v53, -v45, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v54, v50
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v2, v36, v2
	v_div_fixup_f32 v14, v40, v36, v14
	v_fma_f32 v39, -v42, v44, v39
	v_fmac_f32_e32 v46, v43, v49
	v_fma_f32 v40, -v38, v55, v52
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v37, -v47, v46, v37
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v3, v36, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v52
	v_fmac_f32_e32 v42, v40, v51
	v_div_fmas_f32 v39, v39, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v36, v36, v4
	v_div_fmas_f32 v37, v37, v49, v46
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v39, v36, v15
	v_div_fmas_f32 v38, v38, v41, v55
	v_fma_f32 v41, -v45, v42, v53
	v_fma_f32 v45, -v50, v40, v43
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v16, v37, v36, v16
	v_div_fixup_f32 v1, v38, v36, v1
	v_div_scale_f32 v38, null, v36, v36, v5
	v_fmac_f32_e32 v40, v45, v54
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v48, null, v36, v36, v8
	v_div_fmas_f32 v41, v41, v51, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v50, v40, v43
	v_fma_f32 v39, -v44, v46, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v2, v41, v36, v2
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, null, v36, v36, v6
	v_div_scale_f32 v41, null, v36, v36, v7
	v_div_scale_f32 v42, vcc_lo, v4, v36, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v39
	v_rcp_f32_e32 v45, v41
	v_div_fixup_f32 v3, v37, v36, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v37, -v38, v40, 1.0
	v_mul_f32_e32 v47, v42, v46
	v_fma_f32 v54, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, s2, v5, v36, v5
	v_fma_f32 v49, -v39, v43, 1.0
	v_fma_f32 v52, -v41, v45, 1.0
	v_fma_f32 v51, -v44, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v53, v37, v40 :: v_dual_fmac_f32 v50, v54, v50
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s3, v6, v36, v6
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s4, v7, v36, v7
	v_fmac_f32_e32 v47, v51, v46
	v_fma_f32 v51, -v38, v53, v37
	v_div_scale_f32 v54, s5, v8, v36, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v49, v43 :: v_dual_mul_f32 v56, v52, v45
	v_fmac_f32_e32 v53, v51, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v54, v50
	v_fma_f32 v42, -v44, v47, v42
	v_fma_f32 v44, -v39, v55, v49
	v_fma_f32 v51, -v41, v56, v52
	v_fma_f32 v37, -v38, v53, v37
	v_fma_f32 v38, -v48, v57, v54
	v_div_fmas_f32 v42, v42, v46, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v44, v43 :: v_dual_fmac_f32 v56, v51, v45
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v57, v38, v50
	v_div_fmas_f32 v37, v37, v40, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v39, -v39, v55, v49
	v_fma_f32 v38, -v41, v56, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v40, -v48, v57, v54
	v_div_fixup_f32 v4, v42, v36, v4
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v37, v36, v5
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v39, v36, v6
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v38, v36, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v27, 16, 1
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v40, v36, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v36, v25, 16, 1
	v_add3_u32 v37, v26, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v27, v38, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v36, v25, v36, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s5
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v36.h, s4
	v_add3_u32 v25, v28, v25, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v36, v31, 16, 1
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_add3_u32 v30, v31, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s4
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_bfe_u32 v31, v19, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v18, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s7
	v_cmp_o_f32_e64 s7, v32, v32
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s4, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s5
	v_add3_u32 v30, v18, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v18, v19, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_bfe_u32 v20, v21, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v28.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v28, v23, 16, 1
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_bfe_u32 v21, v24, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v30.h, s5
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v9, 16, 1
	v_add3_u32 v21, v24, v21, 0x7fff
	v_bfe_u32 v23, v11, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s6
	v_bfe_u32 v22, v10, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v20, v9, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s5
	v_add3_u32 v22, v10, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s7
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s5
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v14, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s4
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v2, 16, 1
	v_bfe_u32 v15, v3, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_bfe_u32 v1, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s5
	v_add3_u32 v14, v2, v14, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s7
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cmp_o_f32_e64 s7, v4, v4
	v_bfe_u32 v4, v5, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s6
	v_bfe_u32 v2, v6, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s4
	v_add3_u32 v4, v5, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v2, v6, v2, 0x7fff
	v_bfe_u32 v12, v7, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v3.h, 0x7fff, v14.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s4
	v_cmp_eq_u32_e64 s4, 0, v91
	v_cmp_o_f32_e64 s5, v6, v6
	v_add3_u32 v6, v7, v12, 0x7fff
	v_mov_b32_e32 v16, 0x5410
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b32_e64 v12, v18, v19, s4
	v_cndmask_b32_e64 v14, v19, v18, s4
	v_mov_b32_e32 v18, 0x7632
	v_cndmask_b32_e64 v19, v10, v11, s4
	v_cndmask_b32_e64 v10, v11, v10, s4
	v_cndmask_b32_e64 v11, 0x1054, v16, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s7
	v_cndmask_b32_e64 v16, 0x3276, v18, s4
	v_cmp_o_f32_e64 s6, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s7, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s5
	v_cndmask_b32_e64 v18, v13, v9, s4
	v_cndmask_b32_e64 v9, v9, v13, s4
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v13, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s6
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s7
	v_cndmask_b32_e64 v6, v27, v26, s4
	v_cndmask_b32_e64 v8, v25, v29, s4
	v_cndmask_b32_e64 v20, v2, v3, s4
	v_cndmask_b32_e64 v2, v3, v2, s4
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v13
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v15, v21, v17, s4
	v_cndmask_b32_e64 v17, v17, v21, s4
	v_cndmask_b32_e64 v16, v4, v1, s4
	v_cndmask_b32_e64 v1, v1, v4, s4
	v_permlanex16_b32 v4, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v26, v27, s4
	v_cndmask_b32_e64 v7, v29, v25, s4
	v_permlanex16_b32 v11, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v17, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v14, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v2, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s23, v90
	v_cmp_gt_i32_e64 s2, s23, v34
	v_cmp_gt_i32_e64 s1, s23, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v17
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v17
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v12, v17
	v_perm_b32 v6, v11, v12, v21
	v_perm_b32 v7, v13, v15, v17
	v_perm_b32 v8, v13, v15, v21
	v_perm_b32 v9, v10, v19, v17
	v_perm_b32 v11, v14, v18, v17
	v_perm_b32 v13, v22, v20, v17
	v_perm_b32 v15, v23, v16, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v90, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v12, v14, v18, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v10, v19, v21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s3, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v35, v0, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_perm_b32 v14, v22, v20, v21
	v_perm_b32 v16, v23, v16, v21
	s_mov_b32 s23, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v18, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v19, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp179:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 216
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 216
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13376
; TotalNumSgprs: 49
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 216
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
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
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
