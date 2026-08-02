	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x5c
	s_load_b64 s[48:49], s[0:1], 0x0
.Ltmp0:
	.loc	1 753 19 prologue_end           ; attention.py:753:19
	s_lshl_b32 s58, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s59, s3, 9
	s_mov_b32 s51, 0x31027000
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s35, s58, s59
	s_mov_b32 s50, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x78
	s_load_b64 s[44:45], s[0:1], 0x38
	s_mov_b32 s36, 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s56, s35
	v_mov_b32_e32 v97, v0
	s_lshl_b32 s5, s56, 5
	s_mul_i32 s6, s56, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v2, 7, v97
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 3, v97
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s58, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[105:106], null, s56, v0, v[1:2]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v3
	.loc	1 790 61 is_stmt 0              ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s56, v1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_add_nc_u32_e32 v0, s4, v105
	v_lshl_add_u32 v129, s56, 4, v105
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v98, 15, v97
	v_and_b32_e32 v99, 0x60, v97
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v100, 16, v97
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v3, 1, v0
	v_add_lshl_u32 v4, v129, s4, 1
	v_add_lshl_u32 v5, v0, s5, 1
	v_add_lshl_u32 v0, v0, s6, 1
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s58, s9
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v13, 0x80000000, v5, s2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_clause 0x3
	buffer_load_b128 v[5:8], v3, s[48:51], 0 offen
	buffer_load_b128 v[9:12], v4, s[48:51], 0 offen
	buffer_load_b128 v[13:16], v13, s[48:51], 0 offen
	buffer_load_b128 v[17:20], v0, s[48:51], 0 offen
	s_load_b32 s2, s[0:1], 0x80
	v_lshlrev_b32_e32 v4, 1, v97
	v_lshlrev_b32_e32 v3, 4, v97
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s58, s8
	v_lshlrev_b32_e32 v101, 2, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v0, 0x70, v4
	v_xor_b32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v130, 0, v0
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[5:8]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[9:12] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[13:16] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[17:20] offset:6144
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
	s_min_i32 s4, s4, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s60, s5, 0x7fffffe0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s6, s4, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s61, s4, s6
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s61, s61, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s60, s61
	s_cbranch_scc1 .LBB0_35
; %bb.1:                                ; %.lr.ph
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 5, v99
	s_clause 0x2
	s_load_b128 s[4:7], s[0:1], 0x64
	s_load_b128 s[52:55], s[0:1], 0x8
	s_load_b64 s[46:47], s[0:1], 0x30
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v22, 7, v98
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v23, 6, v99
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 24, v65
	v_or_b32_e32 v67, 8, v65
	v_or_b32_e32 v72, 28, v65
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v0, s58, v65
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v24, 4, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s58, v71
	v_or_b32_e32 v7, s58, v67
	v_or_b32_e32 v12, s58, v72
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v21, s2, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v0
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v11, s2, v11
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v7, s2, v7
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v12, s2, v12
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v0, s8, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v25, s8, v11
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v23, v22, v23, v24
	v_and_b32_e32 v4, 60, v4
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v5, 0x78, v97
	.loc	1 866 47                        ; attention.py:866:47
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v25, off
	scratch_store_b32 off, v97, off offset:144
	v_subrev_nc_u32_e32 v0, s8, v7
	v_subrev_nc_u32_e32 v25, s8, v12
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v26, 0x60, v23, 0
	v_xad_u32 v27, 0x50, v23, 0
	v_xad_u32 v28, v23, 64, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v25, off offset:4
	scratch_store_b32 off, v99, off offset:152
	v_xad_u32 v25, 0x70, v23, 0
	ds_load_b128 v[37:40], v25
	ds_load_b128 v[33:36], v26
	ds_load_b128 v[45:48], v27
	ds_load_b128 v[41:44], v28
	v_xad_u32 v25, v23, 48, 0
	v_xad_u32 v26, v23, 32, 0
	v_xad_u32 v27, v23, 16, 0
	v_add_nc_u32_e32 v23, 0, v23
	ds_load_b128 v[53:56], v25
	ds_load_b128 v[49:52], v26
	ds_load_b128 v[61:64], v27
	ds_load_b128 v[57:60], v23
	v_lshrrev_b32_e32 v23, 3, v99
	v_lshl_or_b32 v4, v99, 4, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 4, v65
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_lshlrev_b32 v25, 6, v97
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v29, v65, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v23
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s58, v66
	v_lshrrev_b32_e32 v23, 1, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 2, v5
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s57, v1
	v_and_or_b32 v145, v25, 64, v4
	v_mov_b32_e32 v25, 0
	v_or_b32_e32 v142, v24, v22
	v_lshlrev_b32_e32 v22, 3, v98
	v_lshrrev_b32_e32 v24, 2, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v3, 48, v3
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v6, s2, v6
	v_bfe_i32 v4, v97, 3, 1
	v_or3_b32 v143, v24, v22, v29
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v22, 3, v97
	v_xor_b32_e32 v3, v3, v23
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v97, 31, v97
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[106:107], null, s57, v5, v[1:2]
	v_mov_b32_e32 v1, 0x5410
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v122, s8, v6
	v_lshl_or_b32 v148, v2, 9, v3
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v153, s9, v6
	v_lshrrev_b32_e32 v3, 2, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v98, off offset:148
	scratch_store_b32 off, v101, off offset:160
	v_lshl_or_b32 v6, v98, 9, v101
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[98:99], null, s7, v66, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v68, 12, v65
	v_or_b32_e32 v77, 48, v65
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v70, 20, v65
	v_or_b32_e32 v73, 32, v65
	v_or_b32_e32 v74, 36, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[66:67], null, s7, v67, v[97:98]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[98:99], off offset:16
	scratch_store_b32 off, v100, off offset:156
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v75, 40, v65
	v_or_b32_e32 v76, 44, v65
	v_or_b32_e32 v78, 52, v65
	v_or_b32_e32 v79, 56, v65
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:24 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v68, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 60, v65
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v17, s58, v77
	v_xor_b32_e32 v5, 0x70, v142
	v_or_b32_e32 v8, s58, v68
	v_or_b32_e32 v9, s58, v69
	v_or_b32_e32 v10, s58, v70
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:32 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v69, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s58, v73
	v_or_b32_e32 v14, s58, v74
	v_or_b32_e32 v15, s58, v75
	v_or_b32_e32 v16, s58, v76
	v_or_b32_e32 v18, s58, v78
	v_or_b32_e32 v19, s58, v79
	v_or_b32_e32 v20, s58, v80
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v17, s2, v17
	v_and_b32_e32 v22, 48, v22
	v_add_nc_u32_e32 v177, 0, v5
	v_xor_b32_e32 v5, 12, v6
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:40 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v70, v[97:98]
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v8, s2, v8
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v9, s2, v9
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v10, s2, v10
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v13, s2, v13
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v14, s2, v14
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v15, s2, v15
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v16, s2, v16
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v18, s2, v18
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v19, s2, v19
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v20, s2, v20
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v146, s8, v17
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v164, s9, v17
	v_cmp_eq_u32_e64 s2, 0, v100
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v199, 0, v5
	v_xor_b32_e32 v5, 32, v6
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v22, v2, 6, v22
	v_mov_b32_e32 v2, 0x7632
	v_and_b32_e32 v4, 0x210, v4
	v_cndmask_b32_e64 v1, 0x1054, v1, s2
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x3276, v2, s2
	v_xor_b32_e32 v5, 52, v6
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:48 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v71, v[97:98]
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v149, s8, v19
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v166, s9, v19
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v2, v2, 8, v2
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v209, 0, v5
	v_xor_b32_e32 v5, 0x1830, v145
	v_mov_b32_e32 v19, v25
	v_xor_b32_e32 v150, v22, v4
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v2, 0x760076, v2
	v_add_nc_u32_e32 v214, 0, v5
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:56 ; 8-byte Folded Spill
	v_xor_b32_e32 v5, 32, v150
	v_mad_u64_u32 v[66:67], null, s7, v72, v[97:98]
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v140, s8, v14
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v161, s9, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v219, 0, v5
	v_lshl_or_b32 v1, v1, 4, v1
	v_mov_b32_e32 v5, v25
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:64 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v73, v[97:98]
	v_and_b32_e32 v169, 0x5040504, v1
	v_and_b32_e32 v170, 0x7060706, v2
	v_xor_b32_e32 v1, 16, v142
	v_xor_b32_e32 v2, 32, v142
	v_xor_b32_e32 v168, v101, v3
	v_xor_b32_e32 v3, 0x50, v142
	scratch_store_b64 off, v[66:67], off offset:72 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v171, 0, v1
	v_dual_mov_b32 v121, v97 :: v_dual_add_nc_u32 v172, 0, v2
	v_xor_b32_e32 v1, 48, v142
	v_xor_b32_e32 v2, 64, v142
	v_mad_u64_u32 v[66:67], null, s7, v74, v[97:98]
	v_xor_b32_e32 v4, 0x60, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v173, 0, v1
	v_dual_mov_b32 v255, 0xff800000 :: v_dual_add_nc_u32 v174, 0, v2
	v_xor_b32_e32 v1, 0x220, v168
	v_xor_b32_e32 v2, 0x440, v168
	scratch_store_b64 off, v[66:67], off offset:80 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v75, v[97:98]
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v178, 0, v1
	v_xor_b32_e32 v1, 0x660, v168
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_add_nc_u32 v179, 0, v2
	v_xor_b32_e32 v2, 16, v143
	v_add_nc_u32_e32 v175, 0, v3
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_add_nc_u32 v176, 0, v4
	v_xor_b32_e32 v3, 8, v143
	v_xor_b32_e32 v4, 24, v143
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v180, 0, v1
	v_xor_b32_e32 v1, 32, v143
	v_dual_mov_b32 v231, 0xff800000 :: v_dual_add_nc_u32 v182, 0, v2
	v_xor_b32_e32 v2, 40, v143
	scratch_store_b64 off, v[66:67], off offset:88 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v76, v[97:98]
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v181, 0, v3
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_add_nc_u32 v183, 0, v4
	v_xor_b32_e32 v3, 48, v143
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v184, 0, v1
	v_xor_b32_e32 v1, 56, v143
	v_xor_b32_e32 v4, 64, v143
	v_dual_mov_b32 v228, 0xff800000 :: v_dual_add_nc_u32 v185, 0, v2
	v_xor_b32_e32 v2, 0x48, v143
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_add_nc_u32 v186, 0, v3
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v187, 0, v1
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_add_nc_u32 v188, 0, v4
	v_xor_b32_e32 v1, 0x50, v143
	v_xor_b32_e32 v3, 0x58, v143
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v189, 0, v2
	v_xor_b32_e32 v2, 0x60, v143
	v_xor_b32_e32 v4, 0x68, v143
	scratch_store_b64 off, v[66:67], off offset:96 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v77, v[97:98]
	v_dual_mov_b32 v253, 0xff800000 :: v_dual_add_nc_u32 v190, 0, v1
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v191, 0, v3
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v193, 0, v2
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_add_nc_u32 v194, 0, v4
	v_xor_b32_e32 v1, 0x70, v143
	v_xor_b32_e32 v2, 0x78, v143
	v_xor_b32_e32 v3, 4, v6
	v_xor_b32_e32 v4, 8, v6
	scratch_store_b64 off, v[66:67], off offset:104 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v78, v[97:98]
	v_dual_mov_b32 v254, 0xff800000 :: v_dual_add_nc_u32 v195, 0, v1
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_add_nc_u32 v196, 0, v2
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_add_nc_u32 v197, 0, v3
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_add_nc_u32 v198, 0, v4
	v_xor_b32_e32 v1, 16, v6
	v_xor_b32_e32 v2, 20, v6
	v_xor_b32_e32 v3, 24, v6
	v_xor_b32_e32 v4, 28, v6
	scratch_store_b64 off, v[66:67], off offset:112 ; 8-byte Folded Spill
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_add_nc_u32 v200, 0, v1
	v_dual_mov_b32 v248, 0xff800000 :: v_dual_add_nc_u32 v201, 0, v2
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_add_nc_u32 v202, 0, v3
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_add_nc_u32 v203, 0, v4
	v_xor_b32_e32 v1, 36, v6
	v_xor_b32_e32 v2, 40, v6
	v_xor_b32_e32 v3, 44, v6
	v_xor_b32_e32 v4, 48, v6
	v_mad_u64_u32 v[66:67], null, s7, v79, v[97:98]
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_add_nc_u32 v205, 0, v1
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v206, 0, v2
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_add_nc_u32 v207, 0, v3
	v_add_nc_u32_e32 v208, 0, v4
	v_xor_b32_e32 v1, 56, v6
	v_xor_b32_e32 v2, 60, v6
	v_xor_b32_e32 v3, 0x810, v145
	v_xor_b32_e32 v4, 0x1020, v145
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s62, s4, 0x3fb8aa3b
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[66:67], off offset:120 ; 8-byte Folded Spill
	v_mad_u64_u32 v[66:67], null, s7, v80, v[97:98]
	v_add_nc_u32_e32 v210, 0, v1
	v_add_nc_u32_e32 v211, 0, v2
	v_add_nc_u32_e32 v212, 0, v3
	v_add_nc_u32_e32 v213, 0, v4
	v_xor_b32_e32 v1, 0x90, v148
	v_xor_b32_e32 v2, 0x120, v148
	v_xor_b32_e32 v3, 0x1b0, v148
	v_xor_b32_e32 v4, 16, v150
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s4, s4, 29
	v_add_nc_u32_e32 v215, 0, v1
	s_add_i32 s4, s3, s4
	v_add_nc_u32_e32 v216, 0, v2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s2, s4, -8
	v_add_nc_u32_e32 v217, 0, v3
	v_add_nc_u32_e32 v218, 0, v4
	v_xor_b32_e32 v1, 48, v150
	v_xor_b32_e32 v2, 0x420, v150
	v_xor_b32_e32 v3, 0x430, v150
	v_xor_b32_e32 v4, 0x410, v150
	s_sub_i32 s2, s3, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s3, s4, 3
	scratch_store_b64 off, v[66:67], off offset:128 ; 8-byte Folded Spill
	v_mad_u64_u32 v[65:66], null, s7, v65, v[97:98]
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s6, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s5, s3
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v123, s8, v8
	v_subrev_nc_u32_e32 v192, s8, v9
	v_subrev_nc_u32_e32 v0, s8, v10
	v_subrev_nc_u32_e32 v139, s8, v13
	v_subrev_nc_u32_e32 v141, s8, v15
	v_subrev_nc_u32_e32 v144, s8, v16
	v_subrev_nc_u32_e32 v147, s8, v18
	v_subrev_nc_u32_e32 v151, s8, v20
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v152, s9, v21
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v154, s9, v7
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v155, s9, v8
	v_add_nc_u32_e32 v156, s9, v9
	v_mov_b32_e32 v9, v25
	v_add_nc_u32_e32 v157, s9, v10
	v_add_nc_u32_e32 v158, s9, v11
	v_mov_b32_e32 v11, v25
	v_add_nc_u32_e32 v159, s9, v12
	v_add_nc_u32_e32 v160, s9, v13
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v162, s9, v15
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v163, s9, v16
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v165, s9, v18
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v167, s9, v20
	v_mov_b32_e32 v120, v6
	v_add_nc_u32_e32 v220, 0, v1
	v_add_nc_u32_e32 v221, 0, v2
	v_add_nc_u32_e32 v222, 0, v3
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v223, 0, v4
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s8, s7, s58
	s_add_i32 s63, s2, s3
	s_and_b32 s53, s53, 0xffff
	s_add_i32 s63, s63, s8
	s_and_b32 s49, s55, 0xffff
	s_mov_b32 s48, s54
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s64, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	scratch_store_b64 off, v[65:66], off offset:136 ; 8-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 25 is_stmt 0                ; attention.py:0:25
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v110, s62, v73 :: v_dual_mul_f32 v111, s62, v75
	v_dual_mul_f32 v112, s62, v74 :: v_dual_mul_f32 v109, s62, v76
	v_dual_mul_f32 v74, s62, v67 :: v_dual_mul_f32 v73, s62, v68
	v_dual_mul_f32 v68, s62, v69 :: v_dual_mul_f32 v67, s62, v70
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v69.l, 0xff, v102.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v76, s62, v65 :: v_dual_mul_f32 v75, s62, v66
	v_dual_mul_f32 v66, s62, v71 :: v_dual_mul_f32 v65, s62, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v69.l
	v_and_b16 v69.l, 0xff, v104.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v108, s62, v77 :: v_dual_mul_f32 v125, s62, v78
	v_dual_mul_f32 v78, s62, v79 :: v_dual_mul_f32 v77, s62, v80
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v69.l
	v_and_b16 v69.l, 0xff, v104.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 889 30 is_stmt 1              ; attention.py:889:30
	s_mul_i32 s65, s65, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.h, 0
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s2, 0, v69.l
	v_and_b16 v69.l, 0xff, v102.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s60, s60, 32
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s2, s13, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v69.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v69, 0, 1, s2
	s_and_b32 s13, s6, s3
	s_and_b32 s5, s10, s5
	v_lshlrev_b16 v69.l, 8, v69.l
	v_cndmask_b32_e64 v70, 0, 1, s5
	s_and_b32 s10, s7, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v71.h, v70.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s10
	v_cndmask_b32_e64 v70, 0, 1, s13
	v_lshlrev_b16 v69.l, 8, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v71.l, v70.l, v69.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v69.l, 0xff, v98.l
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v69.l
	v_and_b16 v69.l, 0xff, v99.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s6, 0, v69.l
	s_waitcnt vmcnt(0)
	v_and_b16 v69.l, 0xff, v103.h
	v_cmp_ne_u16_e64 s3, 0, v69.l
	v_and_b16 v69.l, 0xff, v101.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s3, s15, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v69.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v69, 0, 1, s3
	s_and_b32 s15, s8, s4
	s_and_b32 s7, s11, s7
	v_lshlrev_b16 v69.l, 8, v69.l
	v_cndmask_b32_e64 v70, 0, 1, s7
	s_and_b32 s11, s9, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v72.h, v70.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s11
	v_cndmask_b32_e64 v70, 0, 1, s15
	v_lshlrev_b16 v69.l, 8, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v72.l, v70.l, v69.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v69.l, 0xff, v97.h
	v_cmp_ne_u16_e64 s6, 0, v69.l
	v_and_b16 v69.l, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s9, 0, v69.l
	v_and_b16 v69.l, 0xff, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, s12, s9
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v69.l
	v_and_b16 v69.l, 0xff, v100.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s4, s17, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v69.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v69, 0, 1, s4
	s_and_b32 s8, s16, s8
	v_lshlrev_b16 v69.l, 8, v69.l
	v_cndmask_b32_e64 v70, 0, 1, s8
	s_and_b32 s16, s14, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v79.h, v70.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s12
	v_cndmask_b32_e64 v70, 0, 1, s16
	v_lshlrev_b16 v69.l, 8, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v79.l, v70.l, v69.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v69.l, 0xff, v97.l
	v_cmp_ne_u16_e64 s17, 0, v69.l
	v_and_b16 v69.l, 0xff, v98.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s17, s18, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v69.l
	v_and_b16 v69.l, 0xff, v101.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s19, s14
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v69.l
	v_and_b16 v69.l, 0xff, v100.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s6, s21, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v69.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v69, 0, 1, s6
	s_and_b32 s9, s20, s9
	v_lshlrev_b16 v69.l, 8, v69.l
	v_cndmask_b32_e64 v70, 0, 1, s9
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s60, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v69.h, v70.l, v69.l
	v_cndmask_b32_e64 v70, 0, 1, s14
	v_mov_b16_e32 v69.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v69.l, 8, v69.l
	v_or_b16 v69.l, v70.l, v69.l
	v_add_nc_u32_e32 v70, 0, v168
	ds_store_b32 v70, v71
	ds_store_b32 v178, v72
	ds_store_b32 v179, v79
	ds_store_b32 v180, v69
	v_add_nc_u32_e32 v69, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v69, v69
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s26, 1, v69.l
	ds_load_u8_d16 v69, v181
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s26
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s27, 1, v69.l
	ds_load_u8_d16 v69, v182
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v112, s27
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s33, 1, v69.l
	ds_load_u8_d16 v69, v183
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v111, s33
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v131, 0, v148
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s34, 1, v69.l
	ds_load_u8_d16 v69, v184
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v109, s34
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s30, 1, v69.l
	ds_load_u8_d16 v69, v185
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v108, s30
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s31, 1, v69.l
	ds_load_u8_d16 v69, v186
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v125, s31
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s28, 1, v69.l
	ds_load_u8_d16 v69, v187
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v78, s28
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s29, 1, v69.l
	ds_load_u8_d16 v69, v188
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, 0xff800000, v77, s29
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s25, 1, v69.l
	ds_load_u8_d16 v69, v189
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v76, s25
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s23, 1, v69.l
	ds_load_u8_d16 v69, v190
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v75, s23
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s22, 1, v69.l
	ds_load_u8_d16 v69, v191
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v74, s22
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s24, 1, v69.l
	ds_load_u8_d16 v69, v193
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v73, s24
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s19, 1, v69.l
	ds_load_u8_d16 v69, v194
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v68, s19
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s21, 1, v69.l
	ds_load_u8_d16 v69, v195
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v67, s21
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s18, 1, v69.l
	ds_load_u8_d16 v69, v196
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v98, 0xff800000, v66, s18
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v66, s57, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, s65, v66, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v69.l, 1, v69.l
	v_cmp_eq_u16_e64 s20, 1, v69.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v69, 0, v120
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v99, 0xff800000, v65, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s65, v106, 1
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v69, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v66, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v197, v112
	ds_store_b32 v198, v111
	ds_store_b32 v199, v109
	ds_store_b32 v200, v108
	ds_store_b32 v201, v126
	ds_store_b32 v202, v125
	ds_store_b32 v203, v127
	ds_store_b32 v204, v128
	ds_store_b32 v205, v104
	ds_store_b32 v206, v102
	ds_store_b32 v207, v103
	ds_store_b32 v208, v100
	ds_store_b32 v209, v101
	ds_store_b32 v210, v98
	ds_store_b32 v211, v99
	s_waitcnt lgkmcnt(0)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[113:116], v69, s[48:51], 0 offen
	buffer_load_b128 v[65:68], v65, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v97.h, v113.l
	v_mov_b16_e32 v117.h, v114.l
	v_mov_b16_e32 v118.h, v115.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v97.l, v65.l
	v_mov_b16_e32 v113.l, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v145
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v117.l, v66.l
	v_mov_b16_e32 v114.l, v66.h
	v_mov_b16_e32 v118.l, v67.l
	v_mov_b16_e32 v115.l, v67.h
	v_mov_b16_e32 v119.l, v68.l
	v_mov_b16_e32 v119.h, v116.l
	v_mov_b16_e32 v116.l, v68.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[77:78], v65 offset1:32
	ds_load_2addr_b32 v[69:70], v65 offset0:64 offset1:96
	ds_load_2addr_b32 v[79:80], v212 offset1:32
	ds_load_2addr_b32 v[75:76], v213 offset1:32
	ds_load_2addr_b32 v[73:74], v214 offset1:32
	ds_load_2addr_b32 v[71:72], v212 offset0:64 offset1:96
	ds_load_2addr_b32 v[67:68], v213 offset0:64 offset1:96
	ds_load_2addr_b32 v[65:66], v214 offset0:64 offset1:96
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v131, v97, v113 offset1:16
	ds_store_2addr_b32 v215, v117, v114 offset1:16
	ds_store_2addr_b32 v216, v118, v115 offset1:16
	ds_store_2addr_b32 v217, v119, v116 offset1:16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v97, v110, v112
	v_max3_f32 v113, v109, v108, v126
	v_max3_f32 v114, v100, v101, v98
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v97, v97, v111, v113
	v_max3_f32 v113, v104, v102, v103
	v_max3_f32 v113, v113, v114, v99
	v_max3_f32 v114, v125, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v97, v97, v114, v113
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v113, v97, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v97, v255, v97, v113
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v97
	v_sub_f32_e32 v110, v110, v97
	v_sub_f32_e32 v108, v108, v97
	v_sub_f32_e32 v109, v109, v97
	v_sub_f32_e32 v104, v104, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v104, v104
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v97
	v_sub_f32_e32 v102, v102, v97
	v_sub_f32_e32 v101, v101, v97
	v_sub_f32_e32 v100, v100, v97
	v_sub_f32_e32 v99, v99, v97
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s27
	v_cndmask_b32_e64 v110, 0, v110, s26
	v_cndmask_b32_e64 v108, 0, v108, s30
	v_cndmask_b32_e64 v109, 0, v109, s34
	v_cndmask_b32_e64 v104, 0, v104, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v107.l, v112.h
	v_cmp_o_f32_e64 s27, v112, v112
	v_cmp_o_f32_e64 s26, v110, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v104, v104
	v_and_b32_e32 v113, 1, v107
	v_mov_b16_e32 v107.l, v109.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v100, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v112, v113, 0x7fff
	v_mov_b16_e32 v113.h, v107.h
	v_mov_b16_e32 v113.l, v110.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v97
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v113, 1, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s22
	v_cndmask_b32_e64 v101, 0, v101, s21
	v_cndmask_b32_e64 v100, 0, v100, s19
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v110, v110, v113, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v112.h, s27
	v_cmp_o_f32_e64 s27, v109, v109
	v_cmp_o_f32_e64 s22, v102, v102
	v_cmp_o_f32_e64 s21, v101, v101
	v_cndmask_b16 v113.l, 0x7fff, v110.h, s26
	v_cmp_o_f32_e64 s19, v100, v100
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v98, 0, v98, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v110, v113, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v98, v98
	v_perm_b32 v112, v110, v113, v169
	v_perm_b32 v113, v110, v113, v170
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v111, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v111.h, v107.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v111.l, v110.h
	v_cmp_o_f32_e64 s26, v110, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v110, v110, v111, 0x7fff
	v_and_b32_e32 v111, 1, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v109, v109, v111, 0x7fff
	v_cndmask_b16 v109.l, 0x7fff, v110.h, s26
	v_cmp_o_f32_e64 s26, v108, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s27
	v_permlanex16_b32 v110, v109, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v114, v110, v109, v169
	v_perm_b32 v115, v110, v109, v170
	v_mov_b16_e32 v109.h, v107.h
	v_mov_b16_e32 v109.l, v108.h
	v_and_b32_e32 v109, 1, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v126, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v108.l, 0x7fff, v108.h, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v107.l, v109.h
	v_cmp_o_f32_e64 s27, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v107
	v_add3_u32 v109, v109, v110, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v108.h, 0x7fff, v109.h, s27
	v_permlanex16_b32 v109, v108, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v116, v109, v108, v169
	v_perm_b32 v117, v109, v108, v170
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v125, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.h, v107.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v109.l, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s26, v108, v108
	v_and_b32_e32 v109, 1, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v127, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v108.l, 0x7fff, v108.h, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v255
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v109.h
	v_cmp_o_f32_e64 s27, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v110, 1, v107
	v_mov_b16_e32 v107.l, v104.h
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e32 v110.h, v107.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v108.h, 0x7fff, v109.h, s27
	v_permlanex16_b32 v109, v108, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v118, v109, v108, v169
	v_perm_b32 v119, v109, v108, v170
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v108, v255, v97 :: v_dual_mov_b32 v255, v97
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v109, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v109, 0, v109, s26
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v109 :: v_dual_add_nc_u32 v108, 0, v150
	v_mul_f32_e32 v26, v26, v109
	v_mul_f32_e32 v27, v27, v109
	v_mul_f32_e32 v28, v28, v109
	v_mul_f32_e32 v29, v29, v109
	v_mul_f32_e32 v30, v30, v109
	v_mul_f32_e32 v31, v31, v109
	v_mul_f32_e32 v32, v32, v109
	v_mul_f32_e32 v17, v17, v109
	v_mul_f32_e32 v18, v18, v109
	v_mul_f32_e32 v19, v19, v109
	v_mul_f32_e32 v20, v20, v109
	v_mul_f32_e32 v21, v21, v109
	v_mul_f32_e32 v22, v22, v109
	v_mul_f32_e32 v23, v23, v109
	v_mul_f32_e32 v24, v24, v109
	v_mul_f32_e32 v9, v9, v109
	v_mul_f32_e32 v10, v10, v109
	v_mul_f32_e32 v11, v11, v109
	v_mul_f32_e32 v12, v12, v109
	v_mul_f32_e32 v13, v13, v109
	v_mul_f32_e32 v14, v14, v109
	v_mul_f32_e32 v15, v15, v109
	v_mul_f32_e32 v16, v16, v109
	v_mul_f32_e32 v1, v1, v109
	v_mul_f32_e32 v2, v2, v109
	v_mul_f32_e32 v3, v3, v109
	v_mul_f32_e32 v4, v4, v109
	v_mul_f32_e32 v5, v5, v109
	v_mul_f32_e32 v6, v6, v109
	v_mul_f32_e32 v7, v7, v109
	v_mul_f32_e32 v8, v8, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v128, v97
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v108
	ds_load_b128 v[135:138], v218
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v110.l, v109.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v109, v109
	v_and_b32_e32 v110, 1, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v109, v109, v110, 0x7fff
	v_and_b32_e32 v110, 1, v107
	v_mov_b16_e32 v107.l, v103.h
	v_add3_u32 v104, v104, v110, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v109.h, s25
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s23
	v_cmp_o_f32_e64 s23, v103, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v110, v104, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v110, v104, v169
	v_perm_b32 v110, v110, v104, v170
	v_and_b32_e32 v104, 1, v107
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[112:119], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[131:134], v221
	ds_load_b128 v[135:138], v222
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.l, v101.h
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e32 v104.l, v102.h
	v_mov_b16_e32 v104.h, v107.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v104, v102, v104, 0x7fff
	v_cndmask_b16 v102.h, 0x7fff, v103.h, s23
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[131:138], v[112:119], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[131:134], v108 offset:2048
	ds_load_b128 v[135:138], v218 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v102.l, 0x7fff, v104.h, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v103, v102, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v103, v102, v169
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[131:138], v[112:119], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[131:134], v221 offset:2048
	ds_load_b128 v[135:138], v222 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[131:138], v[112:119], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v112, v103, v102, v170
	v_and_b32_e32 v102, 1, v107
	v_mov_b16_e32 v107.l, v99.h
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v80, v80
.Ltmp7:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v219
	ds_load_b128 v[135:138], v220
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v101, v102, 0x7fff
	v_mov_b16_e32 v101.l, v100.h
	v_mov_b16_e32 v101.h, v107.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v101, 1, v101
	v_add3_u32 v101, v100, v101, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v102.h, s21
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v100.l, 0x7fff, v101.h, s19
	v_cmp_o_f32_e64 s19, v99, v99
	v_permlanex16_b32 v101, v100, s64, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v113, v101, v100, v169
	v_perm_b32 v114, v101, v100, v170
	v_and_b32_e32 v100, 1, v107
	v_mov_b16_e32 v107.l, v98.h
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v75, v75
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v100, v99, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v99, 1, v107
	v_add3_u32 v99, v98, v99, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s19
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v79, v79
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v98, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v115, v99, v98, v169
	v_perm_b32 v116, v99, v98, v170
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v98, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v77, v77
.Ltmp16:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[109:116], v[25:32]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v98
.Ltmp18:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v108 offset:1024
	ds_load_b128 v[135:138], v223
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v99
.Ltmp22:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[131:138], v[109:116], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v219 offset:2048
	ds_load_b128 v[135:138], v220 offset:2048
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	v_max_f32_e32 v98, v98, v99
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[131:138], v[109:116], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v108 offset:3072
	ds_load_b128 v[135:138], v223 offset:2048
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v99
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v99, v98, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
.Ltmp30:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[131:138], v[109:116], v[1:8]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v99
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s18, v98, 31
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v98, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v100, v99
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v100, v101, v100
	v_max_f32_e32 v101, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v101, v98
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v101
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v102, v101
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v103, v102
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v103
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v103
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v103
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v102, v103
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v103
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v103
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v103
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v102, v103
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v103
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v99, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v99, v99, v103
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s21, v99, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v101, v101, v103
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v100, v100, v103
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v98, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s20, v100, 31
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v103
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s19, v98, 31
	v_permlanex16_b32 v98, v101, -1, -1 op_sel:[1,0]
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v103, v103, v103 :: v_dual_max_f32 v98, v98, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v102, v102, v103
	v_dual_max_f32 v103, v67, v67 :: v_dual_max_f32 v98, v101, v98
	v_max_f32_e32 v101, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s22, v98, 31
	v_mov_b32_dpp v98, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v101, v100 :: v_dual_max_f32 v101, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v98
	v_max_f32_e32 v98, v101, v98
	v_max_f32_e32 v101, v69, v69
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v99, v102, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	v_max_f32_e32 v99, v102, v99
	v_max_f32_e32 v102, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s23, v99, 31
	v_mov_b32_dpp v99, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v104, s23, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	v_max_f32_e32 v99, v101, v99
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	v_max_f32_e32 v100, v100, v101
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	v_max_f32_e32 v101, v102, v101
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	v_max_f32_e32 v102, v103, v102
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v98, v98, v103
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v99, v99, v103
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v100, v100, v103
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v101, v101, v103
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v102, v102, v103
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v98, v98, v103
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v99, v99, v103
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v100, v100, v103
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v101, v101, v103
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v102, v102, v103
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v98, v98, v103
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v99, v99, v103
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v100, v100, v103
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s26, v100, 31
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v107, s26, s26
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v103
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v98, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v100, v100 :: v_dual_max_f32 v103, v103, v103
	v_max_f32_e32 v98, v98, v103
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v99, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s25, v98, 31
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v98, v101, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp131:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v108, s25, s25
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v103
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v98
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s24, v99, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v103, v103, v103 :: v_dual_max_f32 v98, v101, v98
	v_max_f32_e32 v101, v65, v65
.Ltmp137:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v109, s24, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v103
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s28, v98, 31
	v_mov_b32_dpp v98, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v101, v100 :: v_dual_max_f32 v101, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v99, v102, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v110, s28, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v98
	v_max_f32_e32 v103, v66, v66
	v_dual_max_f32 v99, v99, v99 :: v_dual_max_f32 v98, v101, v98
	v_max_f32_e32 v101, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v99, v102, v99 :: v_dual_max_f32 v102, v68, v68
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s27, v99, 31
	v_mov_b32_dpp v99, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp145:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v111, s27, s27
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v101, v99
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v101
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v102, v101
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v103, v102
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v103
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v103
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v103
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v102, v103
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v103
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v103
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v103
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v102, v103
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v98, v98, v103
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v99, v103
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v100, -1, -1 op_sel:[1,0]
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v100, v100, v103
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s29, v100, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp181:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v100, s21, s21
	v_max_f32_e64 v112, s29, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v103
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v103, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v102, v103
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v98, -1, -1 op_sel:[1,0]
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v98, v98, v103
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v99, -1, -1 op_sel:[1,0]
	v_readlane_b32 s30, v98, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v103, v103, v103 :: v_dual_max_f32 v98, v124, v124
.Ltmp189:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v113, s30, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v103
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v101, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v99, 31
.Ltmp192:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v99, s18, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v124, v98, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v98, v254, v254 :: v_dual_max_f32 v101, v101, v103
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v103, v102, -1, -1 op_sel:[1,0]
.Ltmp196:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v98, v98, v99 :: v_dual_max_f32 v99, v224, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v103, v103, v103
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s33, v101, 31
.Ltmp199:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v101, s20, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v224, v99, v100 :: v_dual_max_f32 v99, v253, v253
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v103
.Ltmp201:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v103, s22, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v224
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v99, v99, v100 :: v_dual_max_f32 v100, v225, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s34, v102, 31
.Ltmp203:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v102, s19, s19
	v_max_f32_e32 v225, v100, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v100, v252, v252 :: v_dual_sub_f32 v75, v75, v225
	v_dual_max_f32 v100, v100, v101 :: v_dual_max_f32 v101, v226, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v226, v101, v102 :: v_dual_max_f32 v101, v251, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v226
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v101, v101, v102
	v_max_f32_e32 v102, v230, v230
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s16
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v230, v102, v103
	v_max_f32_e32 v102, v250, v250
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp205:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v102, v102, v103
	v_max_f32_e32 v103, v227, v227
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v227, v103, v104
	v_max_f32_e32 v103, v249, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp209:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v80, v80, v227 :: v_dual_max_f32 v103, v103, v104
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v104, v228, v228
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp211:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v228, v104, v107
	v_max_f32_e32 v104, v248, v248
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp213:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v104, v104, v107 :: v_dual_max_f32 v107, v229, v229
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v229, v107, v108
	v_dual_max_f32 v107, v247, v247 :: v_dual_sub_f32 v74, v74, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v108, v107, v108
	v_max_f32_e32 v107, v231, v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v231, v107, v109
	v_max_f32_e32 v107, v246, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v109, v107, v109
	v_max_f32_e32 v107, v235, v235
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s14
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v235, v107, v110
	v_dual_max_f32 v107, v245, v245 :: v_dual_sub_f32 v78, v78, v230
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp217:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v235
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v110, v107, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v107, v232, v232
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp219:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v232, v107, v111 :: v_dual_max_f32 v107, v244, v244
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp221:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v78, 0, v78, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v232
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v111, v107, v111
	v_max_f32_e32 v107, v233, v233
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp223:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp225:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s7
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v78, v78, v78 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v78, v78, v78 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp227:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s8
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v78, v78, v78 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp229:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v233, v107, v112
	v_max_f32_e32 v107, v243, v243
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v112, v107, v112 :: v_dual_max_f32 v107, v234, v234
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp233:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v234, v107, v113 :: v_dual_max_f32 v107, v242, v242
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp235:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v70, v70, v234 :: v_dual_max_f32 v125, v107, v113
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v107, v236, v236
	v_max_f32_e64 v113, s31, s31
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v236, v107, v113
	v_dual_max_f32 v107, v241, v241 :: v_dual_sub_f32 v72, v72, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v107, v113
	v_max_f32_e32 v107, v237, v237
	v_max_f32_e64 v113, s33, s33
	v_max_f32_e32 v237, v107, v113
	v_max_f32_e32 v107, v240, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v237
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v127, v107, v113
	v_max_f32_e32 v107, v238, v238
	v_max_f32_e64 v113, s34, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v238, v107, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v107, v239, v239 :: v_dual_sub_f32 v66, v66, v238
	v_max_f32_e32 v128, v107, v113
.Ltmp238:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v107, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp239:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s4
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp240:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v107
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v77, 31
.Ltmp242:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v79
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp244:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s6
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp246:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v79, v77, -1, -1 op_sel:[1,0]
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v79
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v79, v75, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s17, v77, 31
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v79
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v79, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s16, v75, 31
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v79
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v79, v78, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s15, v73, 31
.Ltmp255:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v76
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v78, v79 :: v_dual_sub_f32 v65, v65, v233
.Ltmp257:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v79, 0, v79, s11
.Ltmp258:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s11, v78, 31
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp260:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s9
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v79, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp262:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v80, v79, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v75
.Ltmp266:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v74, -1, -1 op_sel:[1,0]
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s14, v73, 31
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s10, v79, 31
	v_readlane_b32 s12, v74, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v75
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v71, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v69, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v75
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v67, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v71, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v75
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v67, 31
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp278:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v70
.Ltmp279:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v65, 31
.Ltmp280:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v254, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v254
	v_mov_b32_e32 v254, v98
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
.Ltmp282:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp284:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v93, v93, v65, s13
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v253, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v253, v99
.Ltmp286:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp289:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v252
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp291:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v94, v94, v65, s17
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v252, v100
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v67, 31
	v_mov_b32_e32 v252, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp293:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp295:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp297:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v95, v95, v65, s16
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v251, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v251, v101
.Ltmp299:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp302:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v250
.Ltmp303:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp305:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v96, v96, v65, s15
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v250, v102
.Ltmp306:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s18, v69, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp307:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp308:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v250, v102
.Ltmp309:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp310:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp312:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v66, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp313:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v249
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v89, v89, v65, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v249, v103
	v_mov_b32_e32 v249, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v90, v90, v65, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v248, v104
	v_mov_b32_e32 v248, v104
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v247
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v91, v91, v65, s14
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v247, v108
	v_mov_b32_e32 v247, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v92, v92, v65, s12
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v246, v109 :: v_dual_mov_b32 v246, v109
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v245
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v85, v85, v65, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v245, v110
	v_mov_b32_e32 v245, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v86, v86, v65, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v244, v111 :: v_dual_mov_b32 v244, v111
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v243
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v87, v87, v65, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v243, v112
	v_mov_b32_e32 v243, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v88, v88, v65, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v242, v125 :: v_dual_mov_b32 v242, v125
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v241
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v81, v81, v65, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v241, v126
	v_mov_b32_e32 v241, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v82, v82, v65, s18
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v240, v127 :: v_dual_mov_b32 v240, v127
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v239
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v83, v83, v65, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v239, v128
	v_mov_b32_e32 v239, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v84, v84, v65, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_36
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s65, s60, s59
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v73, 0, v142
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s2, s65, s56
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v115, s43 :: v_dual_mov_b32 v112, s40
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s2, v105, 1
	v_add_lshl_u32 v66, s2, v129, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v114, s42 :: v_dual_mov_b32 v113, s41
	v_mov_b32_e32 v110, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e32 v69, 0x80000000, v66, vcc_lo
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v111, s39 :: v_dual_mov_b32 v108, s36
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[52:55], 0 offen
	buffer_load_b128 v[69:72], v69, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v109, s37
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s63, s60
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v171
	ds_load_b128 v[65:68], v73
	ds_load_b128 v[97:100], v73 offset:2048
	ds_load_b128 v[101:104], v171 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[57:64], v[108:115]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[57:64], v[108:115]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v173
	ds_load_b128 v[97:100], v172
	ds_load_b128 v[108:111], v172 offset:2048
	ds_load_b128 v[112:115], v173 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v175
	ds_load_b128 v[97:100], v174
	ds_load_b128 v[108:111], v174 offset:2048
	ds_load_b128 v[112:115], v175 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v177
	ds_load_b128 v[97:100], v176
	ds_load_b128 v[108:111], v176 offset:2048
	ds_load_b128 v[112:115], v177 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[73:80]
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v97, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[108:115], v[33:40], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v108, s60, v121
	v_mov_b16_e32 v98.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v152
	v_mov_b16_e32 v102.l, v98.l
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s2, v108, v97
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s0, s2
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	scratch_load_b64 v[99:100], off, off offset:136 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s4, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v97
	v_add_co_u32 v99, s2, s46, v97
	v_add_co_ci_u32_e64 v100, null, s47, v100, s2
	global_load_d16_u8 v102, v[99:100], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v122
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v153
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[97:98], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s4, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v98, 31, v97
	v_add_co_u32 v97, s2, s46, v97
	v_add_co_ci_u32_e64 v98, null, s47, v98, s2
	global_load_d16_u8 v98, v[97:98], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v97, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v154
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s2, v108, v97
	v_mov_b16_e32 v97.l, 0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v97.h, v97.l
	s_and_b32 s14, s0, s2
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s14
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:24 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s4, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, s2, s46, v99
	v_add_co_ci_u32_e64 v100, null, s47, v100, s2
	global_load_d16_hi_u8 v97, v[99:100], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v123
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v155
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s4, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, s2, s46, v99
	v_add_co_ci_u32_e64 v100, null, s47, v100, s2
	global_load_d16_u8 v97, v[99:100], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v99.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v192
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v104.l, v99.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s7, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[100:101], off, off offset:40 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s2, s46, v100
	v_add_co_ci_u32_e64 v101, null, s47, v101, s2
	global_load_d16_u8 v104, v[100:101], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v0
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v157
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s9, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s4, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, s2, s46, v99
	v_add_co_ci_u32_e64 v100, null, s47, v100, s2
	global_load_d16_hi_u8 v99, v[99:100], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v100, off, off         ; 4-byte Folded Reload
	v_mov_b16_e32 v98.h, 0
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v158
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v99.l, v98.h
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s2, v108, v100
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s12, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s12
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[100:101], off, off offset:56 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s2, s46, v100
	v_add_co_ci_u32_e64 v101, null, s47, v101, s2
	global_load_d16_u8 v99, v[100:101], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v100, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v159
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s2, v108, v100
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s0, s2
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s19
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[100:101], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s2, s46, v100
	v_add_co_ci_u32_e64 v101, null, s47, v101, s2
	global_load_d16_hi_u8 v98, v[100:101], off
.LBB0_19:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v101.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v139
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v102.h, v101.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s10, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v103, 31, v100
	v_add_co_u32 v109, s2, s46, v100
	v_add_co_ci_u32_e64 v110, null, s47, v103, s2
	global_load_d16_hi_u8 v102, v[109:110], off
.LBB0_21:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v140
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v161
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[100:101], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s2, s46, v100
	v_add_co_ci_u32_e64 v101, null, s47, v101, s2
	global_load_d16_u8 v101, v[100:101], off
.LBB0_23:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v100.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v141
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v100.h, v100.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s16, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s16
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:88 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v103
	v_add_co_u32 v109, s2, s46, v103
	v_add_co_ci_u32_e64 v110, null, s47, v110, s2
	global_load_d16_hi_u8 v100, v[109:110], off
.LBB0_25:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v163
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s20
	s_cbranch_execz .LBB0_27
; %bb.26:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v103
	v_add_co_u32 v109, s2, s46, v103
	v_add_co_ci_u32_e64 v110, null, s47, v110, s2
	global_load_d16_u8 v100, v[109:110], off
.LBB0_27:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v103.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v146
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v104.h, v103.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s13, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s13
	s_cbranch_execz .LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v109
	v_add_co_u32 v109, s2, s46, v109
	v_add_co_ci_u32_e64 v110, null, s47, v110, s2
	global_load_d16_hi_u8 v104, v[109:110], off
.LBB0_29:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v147
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v165
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s15
	s_cbranch_execz .LBB0_31
; %bb.30:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:112 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v103
	v_add_co_u32 v109, s2, s46, v103
	v_add_co_ci_u32_e64 v110, null, s47, v110, s2
	global_load_d16_hi_u8 v103, v[109:110], off
.LBB0_31:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v149
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v103.l, v101.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_and_b32 s17, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s17
	s_cbranch_execz .LBB0_33
; %bb.32:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[109:110], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v109
	v_add_co_u32 v109, s2, s46, v109
	v_add_co_ci_u32_e64 v110, null, s47, v110, s2
	global_load_d16_u8 v103, v[109:110], off
.LBB0_33:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v108, v151
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v108, v167
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s0, s2
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_2
; %bb.34:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[107:108], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v108, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, s2, s46, v108
	v_add_co_ci_u32_e64 v109, null, s47, v109, s2
	global_load_d16_hi_u8 v101, v[108:109], off
	s_branch .LBB0_2
.LBB0_35:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
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
	s_branch .LBB0_37
.LBB0_36:                               ; %Flow
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v97, off, off offset:144
	scratch_load_b32 v98, off, off offset:148
	scratch_load_b32 v99, off, off offset:152
	scratch_load_b32 v100, off, off offset:156
	scratch_load_b32 v101, off, off offset:160
.LBB0_37:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 5, v97
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v33, 0x80, v101
	v_lshrrev_b32_e32 v34, 2, v97
	v_and_b32_e32 v36, 12, v97
	v_add_nc_u32_e32 v35, 0, v99
	v_and_b32_e32 v0, 0x60, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v34, 16, v34
	s_barrier
	ds_store_b128 v35, v[93:96]
	ds_store_b128 v35, v[85:88] offset:16
	v_add3_u32 v0, 0, v0, v33
	ds_store_b128 v35, v[89:92] offset:128
	ds_store_b128 v35, v[81:84] offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 4, v100
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v34, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 32, v35
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v99
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v0, v98
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s58, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s57, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v41, s1, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v50, null, v37, v37, v29
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v44, null, v37, v37, v28
	v_fma_f32 v54, -v40, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v38, v46, 1.0
	v_rcp_f32_e32 v57, v50
	v_fma_f32 v55, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_fmac_f32 v46, v53, v46
	v_div_scale_f32 v51, s4, v29, v37, v29
	v_dual_fmac_f32 v48, v55, v48 :: v_dual_mul_f32 v55, v41, v47
	v_div_scale_f32 v43, s2, v27, v37, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v50, v57, 1.0
	v_div_scale_f32 v52, null, v37, v37, v30
	v_fma_f32 v61, -v40, v55, v41
	v_mul_f32_e32 v54, v39, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, v59, v57
	v_fma_f32 v56, -v44, v49, 1.0
	v_rcp_f32_e32 v53, v52
	v_fmac_f32_e32 v55, v61, v47
	v_fma_f32 v60, -v38, v54, v39
	v_mul_f32_e32 v59, v51, v57
	v_dual_fmac_f32 v49, v56, v49 :: v_dual_mul_f32 v56, v43, v48
	v_div_scale_f32 v45, s3, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v60, v46
	v_fma_f32 v62, -v42, v56, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v54, v39
	v_fma_f32 v39, -v40, v55, v41
	v_div_fmas_f32 v38, v38, v46, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v54, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v47, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v38, v37, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s2, v30, v37, v30
	v_fmac_f32_e32 v56, v62, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v42, v56, v43
	v_fma_f32 v42, -v52, v53, 1.0
	v_div_scale_f32 v43, null, v37, v37, v31
	v_fmac_f32_e32 v53, v42, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v38, v43
	v_div_scale_f32 v42, null, v37, v37, v32
	v_rcp_f32_e32 v47, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v43, v38, 1.0
	v_fmac_f32_e32 v38, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v47, 1.0
	v_dual_mul_f32 v58, v45, v49 :: v_dual_fmac_f32 v47, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v44, v58, v45
	v_div_scale_f32 v46, s5, v32, v37, v32
	v_fmac_f32_e32 v58, v63, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v44, v58, v45
	v_mul_f32_e32 v45, v39, v53
	v_div_fmas_f32 v40, v40, v48, v56
	v_fma_f32 v44, -v50, v59, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v40, v37, v27
	v_fma_f32 v40, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v40, v53
	v_fmac_f32_e32 v59, v44, v57
	v_div_scale_f32 v44, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v52, v45, v39
	v_fma_f32 v48, -v50, v59, v51
	v_mul_f32_e32 v51, v46, v47
	v_div_fmas_f32 v41, v41, v49, v58
	v_rcp_f32_e32 v49, v44
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s3, v31, v37, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v41, v38
	v_div_fmas_f32 v48, v48, v57, v59
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_fmas_f32 v39, v39, v53, v45
	v_fma_f32 v50, -v43, v40, v41
	v_div_fixup_f32 v29, v48, v37, v29
	v_div_scale_f32 v48, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v52, v49 :: v_dual_fmac_f32 v40, v50, v38
	v_fma_f32 v50, -v42, v51, v46
	v_div_fixup_f32 v30, v39, v37, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, s2, v17, v37, v17
	v_fma_f32 v39, -v43, v40, v41
	v_fmac_f32_e32 v51, v50, v47
	v_rcp_f32_e32 v45, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v40
	v_fma_f32 v39, -v42, v51, v46
	v_rcp_f32_e32 v42, v48
	v_div_scale_f32 v46, null, v37, v37, v20
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v38, v37, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v54, v45, 1.0
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_div_fixup_f32 v32, v39, v37, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s4, v19, v37, v19
	v_div_fmas_f32 v38, v38, v49, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v46, v40, 1.0
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v43, s3, v18, v37, v18
	v_div_fixup_f32 v17, v38, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_mul_f32_e32 v47, v43, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_div_scale_f32 v49, s2, v20, v37, v20
	v_fma_f32 v39, -v54, v47, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v52, v49, v40 :: v_dual_fmac_f32 v47, v39, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v38, -v54, v47, v43
	v_fma_f32 v54, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v45, v47
	v_fma_f32 v47, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v54, v41
	v_div_scale_f32 v45, s3, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, null, v37, v37, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v52, v43, v40
	v_div_scale_f32 v44, s5, v22, v37, v22
	v_mul_f32_e32 v43, v45, v41
	v_mul_f32_e32 v48, v44, v53
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	v_div_scale_f32 v49, null, v37, v37, v24
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v51, v43, v45
	v_div_fmas_f32 v39, v39, v40, v52
	v_rcp_f32_e32 v40, v49
	v_rcp_f32_e32 v46, v47
	v_div_fixup_f32 v19, v38, v37, v19
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s2, v23, v37, v23
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_fma_f32 v42, -v49, v40, 1.0
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_scale_f32 v51, null, v37, v37, v10
	v_div_fmas_f32 v38, v38, v41, v43
	v_fma_f32 v41, -v50, v48, v44
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v44, s3, v24, v37, v24
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v53, v48
	v_mul_f32_e32 v50, v44, v40
	v_div_fixup_f32 v21, v38, v37, v21
	v_div_scale_f32 v42, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v22, v41, v37, v22
	v_fma_f32 v38, -v49, v50, v44
	v_rcp_f32_e32 v41, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v45, v42
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v53, null, v37, v37, v12
	v_fmac_f32_e32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v37, v9
	v_mul_f32_e32 v43, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v55, v53
	v_fma_f32 v52, -v51, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v48, v45
	v_div_fmas_f32 v39, v39, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v10, v37, v10
	v_div_fixup_f32 v23, v39, v37, v23
	v_div_fmas_f32 v40, v43, v40, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v54, v46, v41
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v40, v37, v24
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v39, v48
	v_mul_f32_e32 v44, v38, v45
	v_fma_f32 v52, -v42, v44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v46, -v42, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s2, v13, v37, v13
	v_div_scale_f32 v45, null, v37, v37, v14
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v46, v39
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v41, v37, v10
	v_div_fmas_f32 v43, v43, v48, v50
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v43
	v_mul_f32_e32 v44, v40, v55
	v_fma_f32 v48, -v53, v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	v_fma_f32 v40, -v53, v44, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v39, null, v37, v37, v1
	v_mul_f32_e32 v44, v41, v47
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v38, s3, v16, v37, v16
	v_div_scale_f32 v53, s4, v1, v37, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v45, v44, v41
	v_fma_f32 v54, -v46, v52, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v54, v52
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v54, s5, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v45, v44, v41
	v_mul_f32_e32 v45, v40, v49
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v39, v42, 1.0
	v_fma_f32 v44, -v43, v45, v40
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v37, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_div_scale_f32 v51, null, v37, v37, v3
	v_fma_f32 v44, -v48, v47, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v45, v40
	v_rcp_f32_e32 v55, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v44, v50
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v37, v37, v4
	v_fma_f32 v38, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v44, -v51, v55, 1.0
	v_mul_f32_e32 v56, v53, v42
	v_div_scale_f32 v49, null, v37, v37, v8
	v_div_fmas_f32 v38, v38, v50, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v41, -v39, v56, v53
	v_div_scale_f32 v44, s2, v3, v37, v3
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v38, v37, v16
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_rcp_f32_e32 v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fma_f32 v40, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v51, v41, v44
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_scale_f32 v39, null, v37, v37, v5
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v53, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v49, v51, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v39, v41, 1.0
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	v_mul_f32_e32 v54, v38, v41
	v_mul_f32_e32 v58, v55, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v43, v47
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v45, v48, v43
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v37, v6
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v50, v44
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v39, -v49, v58, v55
	v_fma_f32 v45, -v40, v56, v50
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_fmac_f32_e32 v56, v45, v44
	v_fma_f32 v39, -v42, v57, v53
	v_div_fixup_f32 v5, v38, v37, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v49, v58, v55
	v_fma_f32 v40, -v40, v56, v50
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s57, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s57, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v36, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s57, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v36, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v37
	v_add_nc_u32_e32 v38, 16, v37
	v_cndmask_b32_e32 v39, 0x80000000, v37, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s57, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v25, v39, s[44:47], 0 offen
	buffer_store_b32 v26, v35, s[44:47], 0 offen
	buffer_store_b32 v27, v38, s[44:47], 0 offen
	v_add_nc_u32_e32 v25, 24, v37
	v_add_nc_u32_e32 v35, 48, v37
	v_add_nc_u32_e32 v26, 32, v37
	v_add_nc_u32_e32 v27, 40, v37
	v_add_nc_u32_e32 v38, 56, v37
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v35, s[44:47], 0 offen
	buffer_store_b32 v32, v38, s[44:47], 0 offen
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
	buffer_store_b32 v17, v25, s[44:47], 0 offen
	buffer_store_b32 v18, v26, s[44:47], 0 offen
	buffer_store_b32 v19, v27, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v37
	v_add_nc_u32_e32 v19, 0x70, v37
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[44:47], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v37
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[44:47], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[44:47], 0 offen
	buffer_store_b32 v24, v20, s[44:47], 0 offen
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[44:47], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v17, s[44:47], 0 offen
	buffer_store_b32 v14, v18, s[44:47], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_nc_u32_e32 v11, 0xc8, v37
	v_add_nc_u32_e32 v12, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	buffer_store_b32 v2, v11, s[44:47], 0 offen
	buffer_store_b32 v3, v12, s[44:47], 0 offen
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
	buffer_store_b32 v4, v0, s[44:47], 0 offen
	buffer_store_b32 v5, v1, s[44:47], 0 offen
	buffer_store_b32 v6, v2, s[44:47], 0 offen
	buffer_store_b32 v7, v3, s[44:47], 0 offen
	buffer_store_b32 v8, v9, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp314:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 168
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 168
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16968
; TotalNumSgprs: 68
; NumVgprs: 256
; ScratchSize: 168
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.quad	.Ltmp106-.Lfunc_begin0
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
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
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
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 168
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 41
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
