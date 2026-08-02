	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s61, s[0:1], 0x5c
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v66, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s47, s2, 6
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v65, 3, v66
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s47, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s46, s47, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v67, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v17, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v101, 15, v0
	v_lshlrev_b32_e32 v106, 2, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v18, 0x70, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v107, 3, v101
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[97:98], null, s61, v1, v[65:66]
	s_mul_i32 s8, s61, s46
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s61, v65
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s9, s61, 5
	s_mul_i32 s10, s61, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	v_xor_b32_e32 v17, v17, v18
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v1, s8, v97
	v_lshl_add_u32 v104, s61, 4, v97
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v108, 0, v17
	v_add_lshl_u32 v4, v1, s9, 1
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v3, v104, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v4 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v5, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s47, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s47, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s62, s6, 0x7fffffe0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 31
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v108, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v108, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v108, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v108, v[13:16] offset:6144
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 27
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s63, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s63, s63, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s63
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 3, v101
	v_lshlrev_b32_e32 v34, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
.LBB0_3:                                ; %Flow129
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s60, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v105, 0x7c, v0
	v_and_b32_e32 v102, 0x60, v0
	v_and_b32_e32 v103, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
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
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v99, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 2, v105
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s8, s4, 28
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v2, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s15, s3, s8
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, s47, v1
	v_bfe_i32 v18, v0, 5, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v109, 3, v2
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_lshlrev_b32 v23, 5, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 32, v4
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v6, s14, v4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v4, 7, v101
	v_lshlrev_b32_e32 v7, 6, v102
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v8, 4, v66
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v5, s14, v5
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v117, s12, v6
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v119, s13, v6
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v30, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v6, v4, v7, v8
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v118, s12, v5
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v120, s13, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s11, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x70, v6, 0
	v_xad_u32 v7, 0x60, v6, 0
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v7
	v_xad_u32 v5, 0x50, v6, 0
	v_xad_u32 v7, v6, 64, 0
	v_xad_u32 v9, v6, 48, 0
	v_xad_u32 v10, v6, 32, 0
	v_xad_u32 v11, v6, 16, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v110, 1, v109
	v_or_b32_e32 v111, 2, v109
	v_or_b32_e32 v112, 3, v109
	v_or_b32_e32 v113, 4, v109
	v_or_b32_e32 v114, 5, v109
	v_or_b32_e32 v115, 6, v109
	v_or_b32_e32 v116, 7, v109
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v6, 0, v6
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[41:44], v7
	ds_load_b128 v[53:56], v9
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[61:64], v11
	ds_load_b128 v[57:60], v6
	v_or_b32_e32 v121, v8, v4
	v_lshl_add_u32 v11, s11, 5, v1
	v_lshlrev_b32_e32 v15, 5, v0
	v_lshlrev_b32_e32 v16, 2, v102
	v_dual_mov_b32 v89, 0xff800000 :: v_dual_add_nc_u32 v122, v1, v109
	v_xor_b32_e32 v12, 0x60, v121
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v123, v11, v109
	v_add_nc_u32_e32 v124, v11, v110
	v_add_nc_u32_e32 v125, v11, v111
	v_add_nc_u32_e32 v126, v11, v112
	v_add_nc_u32_e32 v127, v11, v113
	v_add_nc_u32_e32 v128, v11, v114
	v_add_nc_u32_e32 v129, v11, v115
	v_add_nc_u32_e32 v130, v11, v116
	v_and_b32_e32 v11, 12, v0
	v_and_b32_e32 v15, 0x260, v15
	v_add_nc_u32_e32 v146, 0, v12
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v1, 48, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v17, 8, v11
	v_lshl_or_b32 v19, v11, 1, v16
	v_xor_b32_e32 v13, 0x70, v121
	v_and_b32_e32 v20, 0x7c, v106
	v_lshrrev_b32_e32 v14, 1, v1
	v_lshl_or_b32 v1, v1, 6, v107
	v_or3_b32 v131, v17, v15, v19
	v_and_b32_e32 v21, 24, v0
	v_and_b32_e32 v18, 0x204, v18
	v_and_b32_e32 v22, 0x80, v67
	v_xor_b32_e32 v1, v1, v14
	v_xor_b32_e32 v15, 8, v131
	v_lshrrev_b32_e32 v14, 1, v21
	v_add_nc_u32_e32 v147, 0, v13
	v_mov_b32_e32 v13, v25
	v_and_b32_e32 v17, 8, v0
	v_add_nc_u32_e32 v149, 0, v15
	v_mov_b32_e32 v15, v25
	v_xor_b32_e32 v132, v18, v20
	v_lshl_or_b32 v14, v21, 6, v14
	v_mov_b32_e32 v100, v25
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[48:49], s[0:1], 0x30
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s15, -16
	v_or_b32_e32 v18, v132, v22
	v_or3_b32 v134, v14, v8, v16
	v_lshlrev_b32_e32 v14, 11, v2
	s_sub_i32 s1, s3, s0
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v3, 0x78, v0
	v_xor_b32_e32 v8, 0x408, v18
	v_lshlrev_b32_e32 v18, 6, v103
	v_xor_b32_e32 v7, 48, v121
	v_lshlrev_b32_e32 v24, 3, v102
	v_lshl_or_b32 v16, v11, 3, v16
	v_add_nc_u32_e32 v152, 0, v8
	v_dual_mov_b32 v8, v25 :: v_dual_lshlrev_b32 v17, 4, v17
	v_lshl_or_b32 v11, v11, 9, v23
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s3, s15, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s0, s1, s0
	v_and_or_b32 v17, v106, 16, v17
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s14, s3, 14
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s10, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s9, s3
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 2, v3
	v_or3_b32 v14, v17, v14, v18
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s66, s1, s3
	v_cmp_eq_u32_e64 s1, 0, v103
	v_xor_b32_e32 v11, v11, v16
	v_lshrrev_b32_e32 v3, 1, v3
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_lshlrev_b32 v16, 3, v0
	v_add_nc_u32_e32 v143, 0, v7
	v_mov_b32_e32 v7, v25
	v_or3_b32 v135, v14, v24, v23
	v_mov_b32_e32 v14, 0x5410
	v_dual_mov_b32 v23, 0x7632 :: v_dual_lshlrev_b32 v2, 4, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[98:99], null, s60, v5, v[65:66]
	v_bfe_i32 v18, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x1054, v14, s1
	v_mov_b32_e32 v99, v25
	v_xor_b32_e32 v2, v2, v3
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_and_b32 v3, 48, v16
	v_cndmask_b32_e64 v14, 0x3276, v23, s1
	v_lshl_or_b32 v5, v5, 8, v5
	v_and_b32_e32 v18, 0x210, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v66, 6, v3
	v_xor_b32_e32 v4, 16, v121
	v_xor_b32_e32 v6, 32, v121
	v_add_nc_u32_e32 v133, 0, v22
	v_lshl_or_b32 v14, v14, 8, v14
	v_and_b32_e32 v5, 0x540054, v5
	v_lshl_or_b32 v136, v66, 9, v2
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_add_nc_u32 v2, 0, v103
	v_xor_b32_e32 v137, v3, v18
	v_xor_b32_e32 v3, 0x60, v135
	v_and_b32_e32 v14, 0x760076, v14
	v_lshl_or_b32 v5, v5, 4, v5
	v_add_nc_u32_e32 v140, v2, v11
	v_xor_b32_e32 v2, 0x90, v136
	v_add_nc_u32_e32 v141, 0, v4
	v_add_nc_u32_e32 v142, 0, v6
	v_add_nc_u32_e32 v158, 0, v3
	v_xor_b32_e32 v3, 0x1b0, v136
	v_xor_b32_e32 v4, 16, v137
	v_mov_b32_e32 v6, v25
	v_add_nc_u32_e32 v148, v133, v1
	v_xor_b32_e32 v1, 0x120, v136
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s0, 0x80000
	v_xor_b32_e32 v9, 64, v121
	v_xor_b32_e32 v10, 0x50, v121
	v_xor_b32_e32 v19, 16, v131
	v_xor_b32_e32 v20, 24, v131
	v_xor_b32_e32 v21, 4, v134
	v_xor_b32_e32 v22, 8, v134
	v_xor_b32_e32 v17, 12, v134
	v_xor_b32_e32 v23, 32, v135
	v_xor_b32_e32 v16, 64, v135
	v_lshl_or_b32 v14, v14, 4, v14
	v_and_b32_e32 v138, 0x5040504, v5
	v_xor_b32_e32 v5, 32, v137
	v_add_nc_u32_e32 v159, 0, v2
	v_add_nc_u32_e32 v160, 0, v1
	v_add_nc_u32_e32 v161, 0, v3
	v_add_nc_u32_e32 v162, 0, v4
	v_xor_b32_e32 v1, 48, v137
	v_xor_b32_e32 v2, 0x420, v137
	v_xor_b32_e32 v3, 0x430, v137
	v_xor_b32_e32 v4, 0x410, v137
	s_sext_i32_i16 s0, s0
	v_and_b32_e32 v139, 0x7060706, v14
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_add_nc_u32_e32 v144, 0, v9
	s_and_b32 s64, s0, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s60, v65
	v_add_nc_u32_e32 v145, 0, v10
	v_add_nc_u32_e32 v150, 0, v19
	v_add_nc_u32_e32 v151, 0, v20
	v_add_nc_u32_e32 v153, 0, v21
	v_add_nc_u32_e32 v154, 0, v22
	v_add_nc_u32_e32 v155, 0, v17
	v_add_nc_u32_e32 v156, 0, v23
	v_add_nc_u32_e32 v157, 0, v16
	v_add_nc_u32_e32 v163, 0, v5
	v_add_nc_u32_e32 v164, 0, v1
	v_add_nc_u32_e32 v165, 0, v2
	v_add_nc_u32_e32 v166, 0, v3
	v_add_nc_u32_e32 v167, 0, v4
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v168, 3, v122
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v169, 4, v122
	v_add_nc_u32_e32 v170, 5, v122
	v_add_nc_u32_e32 v171, 6, v122
	v_add_nc_u32_e32 v172, 7, v122
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s65, s8, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s8, s11, s47
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s36, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s64, s64, s14
	s_add_i32 s66, s66, s8
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	s_mov_b32 s67, 0x76543210
	s_mov_b32 s56, s6
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s10, s64, s62
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v88, s43 :: v_dual_add_nc_u32 v65, 0, v121
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s1, s10, s61
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v87, s42 :: v_dual_mov_b32 v86, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s1, v97, 1
	v_add_lshl_u32 v67, s1, v104, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v85, s40 :: v_dual_mov_b32 v84, s39
	v_dual_mov_b32 v83, s38 :: v_dual_mov_b32 v82, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v70, 0x80000000, v67, s2
	s_clause 0x1
	buffer_load_b128 v[66:69], v66, s[52:55], 0 offen
	buffer_load_b128 v[70:73], v70, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v81, s36 :: v_dual_add_nc_u32 v180, v133, v132
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v94, s62, v115
	v_or_b32_e32 v90, s62, v110
	v_or_b32_e32 v93, s62, v113
	v_or_b32_e32 v92, s62, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v183, 1, v122
	v_add_nc_u32_e32 v184, 2, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v94, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v94, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v94, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v94, v120
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s11, s66, s62
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v93, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v93, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v93, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v93, v120
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v90, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v90, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v90, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v90, v120
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v92, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v92, v120
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v95, s62, v112
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s4, s4, s5
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v96, s62, v114
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s6, s7
	s_and_b32 s7, s15, s17
	s_and_b32 s5, s8, s9
	s_and_b32 s9, s33, s34
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 s8, vcc_lo, s4
	s_and_b32 s15, vcc_lo, s7
	s_and_b32 s17, vcc_lo, s9
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v178, s62, v116
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v95, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v95, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v95, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v95, v120
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s9, vcc_lo, s5
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v96, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v96, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v96, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v96, v120
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v178, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v178, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v178, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v178, v120
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v91, s62, v109
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s24, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.l, 0
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v179, 0, v131
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s62, s62, 32
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v91, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v91, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v91, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v91, v120
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v90.l, v177.l
	v_mov_b16_e64 v91.l, v177.l
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s14, s16
	s_and_b32 s14, s22, s23
	s_and_b32 s4, s18, s19
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s18, vcc_lo, s4
	s_and_b32 s4, s20, s21
	s_and_b32 s19, s26, s27
	s_and_b32 s16, s30, s31
	s_and_b32 s20, vcc_lo, s14
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s16, vcc_lo, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v93.l, v177.l
	v_mov_b16_e64 v94.l, v177.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v108, v[66:69]
	s_waitcnt vmcnt(0)
	ds_store_b128 v108, v[70:73] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[189:192], v141
	ds_load_b128 v[185:188], v65
	ds_load_b128 v[193:196], v65 offset:2048
	ds_load_b128 v[197:200], v141 offset:2048
	ds_load_b128 v[205:208], v143
	ds_load_b128 v[201:204], v142
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[185:192], v[57:64], v[81:88]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[193:200], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v142 offset:2048
	ds_load_b128 v[85:88], v143 offset:2048
	ds_load_b128 v[189:192], v145
	ds_load_b128 v[185:188], v144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[201:208], v[49:56], v[73:80]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v193, s11, v130, 1
	v_add_lshl_u32 v194, s11, v125, 1
	v_add_lshl_u32 v195, s11, v123, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.h, v177.l
	v_mov_b16_e64 v198.h, v177.l
	v_mov_b16_e64 v197.h, v177.l
	v_mov_b16_e64 v199.h, v177.l
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v144 offset:2048
	ds_load_b128 v[85:88], v145 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[185:192], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[189:192], v147
	ds_load_b128 v[185:188], v146
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v146 offset:2048
	ds_load_b128 v[85:88], v147 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[185:192], v[33:40], v[73:80]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v187, s11, v168, 1
	v_add_lshl_u32 v188, s11, v169, 1
	v_add_lshl_u32 v189, s11, v170, 1
	v_add_lshl_u32 v190, s11, v171, 1
	v_add_lshl_u32 v191, s11, v172, 1
	v_add_lshl_u32 v192, s11, v122, 1
	v_cndmask_b32_e64 v96, 0x80000000, v188, s3
	v_mov_b16_e64 v188.l, v177.l
	v_cndmask_b32_e64 v95, 0x80000000, v190, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[33:40], v[65:72]
	v_mad_u64_u32 v[81:82], null, s10, s60, v[98:99]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v84, s11, v127, 1
	v_add_lshl_u32 v85, s11, v129, 1
	v_add_lshl_u32 v86, s11, v124, 1
	v_add_lshl_u32 v87, s11, v126, 1
	v_add_lshl_u32 v88, s11, v128, 1
	v_add_lshl_u32 v82, s11, v183, 1
	v_add_lshl_u32 v83, s11, v184, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v92, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v92, v119
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v85, 0x80000000, v85, s8
	v_cndmask_b32_e64 v82, 0x80000000, v82, s15
	v_cndmask_b32_e64 v86, 0x80000000, v86, s17
	v_cndmask_b32_e64 v84, 0x80000000, v84, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s10, s11
	s_and_b32 s10, s12, s13
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s10, vcc_lo, s10
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v83, 0x80000000, v83, s6
	v_cndmask_b32_e64 v183, 0x80000000, v194, s10
	s_clause 0x7
	buffer_load_u16 v95, v95, s[48:51], 0 offen
	buffer_load_u16 v178, v82, s[48:51], 0 offen
	buffer_load_u16 v82, v96, s[48:51], 0 offen
	buffer_load_u16 v96, v83, s[48:51], 0 offen
	buffer_load_u16 v85, v85, s[48:51], 0 offen
	buffer_load_u16 v86, v86, s[48:51], 0 offen
	buffer_load_u16 v84, v84, s[48:51], 0 offen
	buffer_load_u16 v183, v183, s[48:51], 0 offen
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s28, s29
	s_and_b32 s13, vcc_lo, s5
	s_and_b32 s12, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v189, 0x80000000, v189, s13
	v_cndmask_b32_e64 v190, 0x80000000, v191, s11
	v_cndmask_b32_e64 v187, 0x80000000, v187, s12
	v_cndmask_b32_e64 v191, 0x80000000, v193, s20
	v_cndmask_b32_e64 v88, 0x80000000, v88, s19
	v_cndmask_b32_e64 v87, 0x80000000, v87, s16
	v_mov_b16_e64 v92.l, v177.l
	v_mov_b16_e64 v193.l, v177.l
	v_mov_b16_e64 v184.l, v177.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v194.h, v177.l
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v83.h, 0xff80, v95.l, s1
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v85.h, 0xff80, v85.l, s8
	v_cndmask_b16 v83.l, 0xff80, v82.l, s3
	v_cndmask_b32_e64 v82, 0x80000000, v192, s7
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v85.l, 0xff80, v84.l, s9
	v_cndmask_b32_e64 v84, 0x80000000, v195, s18
	s_clause 0x5
	buffer_load_u16 v190, v190, s[48:51], 0 offen
	buffer_load_u16 v189, v189, s[48:51], 0 offen
	buffer_load_u16 v187, v187, s[48:51], 0 offen
	buffer_load_u16 v191, v191, s[48:51], 0 offen
	buffer_load_u16 v88, v88, s[48:51], 0 offen
	buffer_load_u16 v192, v87, s[48:51], 0 offen
	v_mov_b16_e32 v91.h, v83.l
	buffer_load_u16 v82, v82, s[48:51], 0 offen
	v_mov_b16_e32 v90.h, v83.h
	buffer_load_u16 v84, v84, s[48:51], 0 offen
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v82.h, 0xff80, v96.l, s6
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v84.h, 0xff80, v183.l, s10
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v86.l, 0xff80, v86.l, s17
	v_mov_b16_e32 v92.h, v82.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v90
	v_cmp_neq_f32_e64 s5, 0xff800000, v91
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v95.l, v177.l
	v_mov_b16_e32 v93.h, v85.h
	v_mov_b16_e32 v94.h, v85.l
	v_mov_b16_e32 v95.h, v84.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v92
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v183.l, v177.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v93
	v_cmp_neq_f32_e64 s23, 0xff800000, v94
	v_cmp_neq_f32_e64 s24, 0xff800000, v95
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v96.l, v177.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s1, s4
	s_and_b32 s1, s8, s22
	s_and_b32 s6, s6, s21
	s_and_b32 s5, s3, s5
	s_and_b32 s3, s9, s23
	s_and_b32 s9, s10, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v192.h, v177.l
	v_mov_b16_e64 v195.h, v177.l
	v_mov_b16_e64 v191.h, v177.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v87.h, 0xff80, v191.l, s20
	v_cndmask_b16 v87.l, 0xff80, v88.l, s19
	v_cndmask_b16 v86.h, 0xff80, v192.l, s16
	v_cndmask_b16 v82.l, 0xff80, v82.l, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v189.h, v87.h
	v_cndmask_b16 v84.l, 0xff80, v84.l, s18
	v_mov_b16_e64 v193.h, v87.l
	v_mov_b16_e64 v188.h, v86.h
	v_mov_b16_e64 v177.h, v82.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v148, v[82:83], v[84:85] offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v83.h, 0xff80, v190.l, s11
	v_cndmask_b16 v83.l, 0xff80, v189.l, s13
	v_cndmask_b16 v82.h, 0xff80, v187.l, s12
	v_cndmask_b16 v82.l, 0xff80, v178.l, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v177
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v96.h, v83.h
	v_mov_b16_e64 v184.h, v83.l
	v_mov_b16_e64 v183.h, v82.h
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v148, v[82:83], v[86:87] offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v177.h, v82.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v82, 1, v81
	v_add_lshl_u32 v81, v81, s60, 1
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[90:91], v149
	ds_load_b64 v[92:93], v150
	ds_load_b64 v[94:95], v151
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v88, 0x80000000, v82, s0
	v_cndmask_b32_e64 v178, 0x80000000, v81, s0
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[81:82], v179
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v177
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v177.h, v84.l
	v_mov_b16_e64 v189.l, v177.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v193
	v_cmp_neq_f32_e64 s27, 0xff800000, v183
	v_cmp_neq_f32_e64 s30, 0xff800000, v188
	v_cmp_neq_f32_e64 s25, 0xff800000, v96
	v_cmp_neq_f32_e64 s29, 0xff800000, v189
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v96, 0, 1, s4
	s_and_b32 s10, s19, s28
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v177
	v_cmp_neq_f32_e64 s26, 0xff800000, v184
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s7, s14
	s_and_b32 s14, s12, s27
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v85, 16, v90
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v181, 0, v134
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v87, 0xffff0000, v90
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v186, 0, v136
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s20, s29
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v81
	v_and_b32_e32 v81, 0xffff0000, v81
	v_lshlrev_b32_e32 v84, 16, v82
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v182, 0, v135
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s16, s30
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v177.h, v86.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v179, 0x3fb8aa3b, v81
	v_mul_f32_e32 v81, 0x3fb8aa3b, v84
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v82, 0xffff0000, v82
	v_lshlrev_b32_e32 v90, 16, v91
	v_and_b32_e32 v91, 0xffff0000, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v84, 0x3fb8aa3b, v85 :: v_dual_fmac_f32 v81, s65, v75
	v_dual_mul_f32 v82, 0x3fb8aa3b, v82 :: v_dual_add_nc_u32 v185, 0, v137
	v_mul_f32_e32 v85, 0x3fb8aa3b, v87
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v179, s65, v74
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v87, 0x3fb8aa3b, v90 :: v_dual_mul_f32 v90, 0x3fb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, s65, v76
	v_fmac_f32_e32 v84, s65, v77
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v76, 16, v92
	v_and_b32_e32 v77, 0xffff0000, v92
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v85, s65, v78 :: v_dual_lshlrev_b32 v92, 16, v95
	v_dual_fmac_f32 v87, s65, v79 :: v_dual_lshlrev_b32 v78, 16, v93
	v_dual_fmac_f32 v90, s65, v80 :: v_dual_and_b32 v79, 0xffff0000, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v80, 16, v94
	v_and_b32_e32 v93, 0xffff0000, v95
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v95, 0x3fb8aa3b, v76
	v_dual_mul_f32 v92, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v83, 0x3fb8aa3b, v83
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v74, 0, 1, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v91, 0xffff0000, v94
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v94, 0, 1, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	v_dual_mul_f32 v188, 0x3fb8aa3b, v80 :: v_dual_fmac_f32 v95, s65, v65
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v92, s65, v71 :: v_dual_mul_f32 v183, 0x3fb8aa3b, v77
	v_fmac_f32_e32 v83, s65, v73
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v73, 0, 1, s5
	v_cndmask_b32_e64 v71, 0, 1, s9
	v_mov_b16_e32 v65.l, v96.l
	v_cndmask_b32_e64 v75, 0, 1, s7
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v184, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v93, 0x3fb8aa3b, v93
	v_mul_f32_e32 v91, 0x3fb8aa3b, v91
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v78, s65, v67
	v_fmac_f32_e32 v188, s65, v69
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v77, 0, 1, s14
	v_cndmask_b32_e64 v79, 0, 1, s8
	v_cndmask_b32_e64 v187, 0, 1, s12
	v_mov_b16_e32 v67.l, v74.l
	v_mov_b16_e32 v69.l, v94.l
	s_and_b32 s16, s15, s31
	s_and_b32 s15, s18, s19
	s_and_b32 s11, s11, s25
	s_and_b32 s13, s13, s26
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v177
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v183, s65, v66
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v66.l, v73.l
	v_lshlrev_b16 v65.l, 8, v65.l
	v_lshlrev_b16 v67.h, 8, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s15
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v184, s65, v68 :: v_dual_fmac_f32 v91, s65, v70
	v_fmac_f32_e32 v93, s65, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v70, 0, 1, s3
	v_cndmask_b32_e64 v72, 0, 1, s11
	v_cndmask_b32_e64 v76, 0, 1, s13
	v_cndmask_b32_e64 v80, 0, 1, s10
	v_mov_b16_e32 v68.l, v75.l
	v_mov_b16_e32 v74.l, v77.l
	v_cndmask_b32_e64 v86, 0, 1, s16
	v_mov_b16_e32 v75.l, v79.l
	v_mov_b16_e64 v77.l, v187.l
	v_lshlrev_b16 v65.h, 8, v67.l
	v_lshlrev_b16 v66.h, 8, v69.l
	s_and_b32 s17, s17, s20
	v_or_b16 v72.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v71.l
	v_mov_b16_e32 v73.l, v76.l
	v_mov_b16_e32 v76.l, v80.l
	v_lshlrev_b16 v67.l, 8, v72.l
	v_lshlrev_b16 v68.h, 8, v74.l
	v_mov_b16_e32 v69.l, v86.l
	v_lshlrev_b16 v69.h, 8, v75.l
	v_lshlrev_b16 v70.h, 8, v77.l
	v_or_b16 v72.l, v68.l, v65.h
	v_or_b16 v65.h, v70.l, v66.h
	v_cndmask_b32_e64 v66, 0, 1, s17
	v_or_b16 v65.l, v65.l, v67.h
	v_or_b16 v73.h, v73.l, v67.l
	v_or_b16 v73.l, v69.l, v68.h
	v_or_b16 v68.h, v76.l, v69.h
	v_or_b16 v68.l, v66.l, v70.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v180, v72, v65 offset1:1
	ds_store_2addr_stride64_b32 v152, v73, v68 offset1:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v66, v181
	ds_load_b32 v67, v153
	ds_load_b32 v68, v154
	ds_load_b32 v65, v155
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v89
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v69, 0x10000, v66
	v_and_b32_e32 v76, 1, v67
	v_and_b32_e32 v74, 1, v66
	v_and_b32_e32 v86, 1, v65
	v_and_b32_e32 v94, 0x1000000, v65
	v_cmp_ne_u32_e64 s27, 0, v69
	v_cmp_eq_u32_e64 s30, 1, v76
	v_and_b32_e32 v75, 0x1000000, v66
	v_lshrrev_b16 v66.h, 8, v68.l
	v_cmp_eq_u32_e64 s28, 1, v74
	v_and_b32_e32 v77, 0x1000000, v67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v84, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v71, 0x10000, v67
	v_and_b32_e32 v72, 0x10000, v68
	v_and_b32_e32 v79, 1, v68
	v_and_b16 v70.h, 1, v66.h
	v_cmp_ne_u32_e64 s29, 0, v75
	v_cmp_ne_u32_e64 s31, 0, v71
	v_cmp_ne_u32_e64 s33, 0, v77
	v_cmp_eq_u32_e64 s20, 1, v86
	v_cmp_eq_u32_e64 s24, 1, v79
	v_cmp_ne_u32_e64 s21, 0, v72
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v87, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v73, 0x10000, v65
	v_lshrrev_b16 v65.h, 8, v66.l
	v_lshrrev_b16 v66.l, 8, v67.l
	v_lshrrev_b16 v65.l, 8, v65.l
	v_cmp_eq_u16_e64 s25, 1, v70.h
	v_cmp_ne_u32_e64 s18, 0, v73
	v_and_b16 v69.h, 1, v65.h
	v_and_b16 v70.l, 1, v66.l
	v_and_b16 v69.l, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v83, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s19, 0, v94
	v_cmp_eq_u16_e64 s34, 1, v69.h
	v_cmp_eq_u16_e64 s35, 1, v70.l
	v_cmp_eq_u16_e64 s22, 1, v69.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v81, s27
	v_cndmask_b32_e64 v190, 0xff800000, v90, s33
	v_cndmask_b32_e64 v66, 0xff800000, v179, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v80, 0x1000000, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v82, s29
	v_cndmask_b32_e64 v81, 0xff800000, v188, s20
	v_cndmask_b32_e64 v188, 0xff800000, v85, s35
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v73, v65, v66
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s23, 0, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v95, s24
	v_cndmask_b32_e64 v79, 0xff800000, v78, s21
	v_cndmask_b32_e64 v78, 0xff800000, v183, s25
	v_cndmask_b32_e64 v83, 0xff800000, v92, s18
	v_cndmask_b32_e64 v80, 0xff800000, v184, s23
	v_cndmask_b32_e64 v84, 0xff800000, v93, s19
	v_cndmask_b32_e64 v82, 0xff800000, v91, s22
	ds_store_b128 v182, v[65:68]
	ds_store_b128 v156, v[187:190]
	ds_store_b128 v157, v[77:80]
	ds_store_b128 v158, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[69:72], v88, s[56:59], 0 offen
	buffer_load_b128 v[93:96], v178, s[56:59], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v68, v187, v188
	v_max3_f32 v91, v78, v79, v80
	v_max3_f32 v92, v81, v82, v83
	v_max3_f32 v90, v189, v190, v77
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[85:88], v140
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v178, v73, v67, v74
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[73:76], v140 offset:512
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v91, v91, v92, v84
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[210:213], v140 offset:1536
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v90, v178, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v91, v90, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v178, v89, v90, v91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v178
	v_sub_f32_e32 v67, v67, v178
	v_sub_f32_e32 v66, v66, v178
	v_sub_f32_e32 v68, v68, v178
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v90, v89, v178
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v180, v187, v178
	v_sub_f32_e32 v182, v189, v178
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v179, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v180, v180
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s28
	v_cndmask_b32_e64 v67, 0, v67, s27
	v_cndmask_b32_e64 v66, 0, v66, s34
	v_cndmask_b32_e64 v68, 0, v68, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v182, v182
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v192.l, v65.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v188, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v195.l, v67.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v190, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v191.l, v66.h
	v_and_b32_e32 v184, 1, v192
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v188, 1, v195
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v194.l, v68.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v214, 0, v179, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v89, 1, v191
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v180, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v66, v66
	v_and_b32_e32 v187, 1, v194
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v182, 0, v182, s31
	v_cndmask_b32_e64 v181, 0, v181, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v68, v68
	v_cmp_o_f32_e64 s31, v67, v67
	v_mov_b16_e64 v196.l, v181.h
	v_add3_u32 v65, v65, v184, 0x7fff
	v_mov_b16_e64 v198.l, v183.h
	v_add3_u32 v68, v68, v187, 0x7fff
	v_add3_u32 v67, v67, v188, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v214
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v89, 0x7fff
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[89:92], v140 offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v197.l, v180.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v214 :: v_dual_and_b32 v189, 1, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v191, 1, v198
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s34
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s29
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s31
	v_mov_b16_e64 v199.l, v182.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v214 :: v_dual_and_b32 v190, 1, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v181, v181
	v_cmp_o_f32_e64 s27, v183, v183
	v_add3_u32 v184, v181, v189, 0x7fff
	v_add3_u32 v181, v183, v191, 0x7fff
	v_permlanex16_b32 v67, v66, s67, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v68, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v27, v27, v214 :: v_dual_and_b32 v192, 1, v199
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v180, v180
	v_add3_u32 v187, v180, v190, 0x7fff
	v_perm_b32 v65, v67, v66, v138
	v_perm_b32 v66, v67, v66, v139
	v_perm_b32 v67, v183, v68, v138
	v_perm_b32 v68, v183, v68, v139
	v_cmp_o_f32_e64 s28, v182, v182
	v_add3_u32 v180, v182, v192, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v184.h, s33
	v_cndmask_b16 v182.l, 0x7fff, v187.h, s35
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v214
	v_mul_f32_e32 v19, v19, v214
	v_mul_f32_e32 v14, v14, v214
	v_mul_f32_e32 v26, v26, v214
	v_mul_f32_e32 v5, v5, v214
	v_mul_f32_e32 v7, v7, v214
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v183.l, v69.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v183.h, v93.l
	v_mov_b16_e32 v93.l, v69.h
	v_mov_b16_e64 v184.l, v70.l
	v_mov_b16_e64 v184.h, v94.l
	v_mov_b16_e32 v94.l, v70.h
	v_mov_b16_e64 v187.l, v71.l
	v_mov_b16_e64 v187.h, v95.l
	v_mov_b16_e32 v95.l, v71.h
	v_mov_b16_e64 v188.l, v72.l
	v_mov_b16_e64 v188.h, v96.l
	v_mov_b16_e32 v96.l, v72.h
	ds_store_2addr_b32 v186, v183, v93 offset1:16
	ds_store_2addr_b32 v159, v184, v94 offset1:16
	ds_store_2addr_b32 v160, v187, v95 offset1:16
	ds_store_2addr_b32 v161, v188, v96 offset1:16
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v92, v92
	v_max_f32_e32 v94, v88, v88
.Ltmp13:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v214
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v95, v90, v87, v91
	v_max3_f32 v96, v211, v75, v212
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v181.h, s27
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v93, v94, v93
	v_max3_f32 v94, v85, v89, v86
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v180.h, s28
	v_permlanex16_b32 v70, v182, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v94, v95, v93
	v_max_f32_e32 v95, v76, v76
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v179, v72, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v182, v138
	v_perm_b32 v70, v70, v182, v139
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v94, v93
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v179, v72, v138
	v_perm_b32 v72, v179, v72, v139
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[186:189], v185
	ds_load_b128 v[190:193], v162
	ds_load_b128 v[194:197], v162 offset:2048
	ds_load_b128 v[179:182], v185 offset:1024
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v94, v94, v94
	v_max_f32_e32 v93, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v94, v93
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v94, v94, v94
	v_max_f32_e32 v93, v93, v94
.Ltmp26:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v94, v173, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v214 :: v_dual_max_f32 v173, v94, v93
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v94, v213, v213
.Ltmp28:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v214
	v_mul_f32_e32 v10, v10, v214
	v_dual_mul_f32 v31, v31, v214 :: v_dual_sub_f32 v90, v90, v173
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v94, v95, v94
	v_max3_f32 v95, v73, v210, v74
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v85, v173
	v_sub_f32_e32 v89, v89, v173
	v_sub_f32_e32 v86, v86, v173
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v214 :: v_dual_sub_f32 v87, v87, v173
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v94, v95, v96, v94
.Ltmp32:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v214
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v86, v86
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v95, v94 :: v_dual_mul_f32 v12, v12, v214
.Ltmp34:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v91, v173
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v214 :: v_dual_sub_f32 v88, v88, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v178
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s7
	v_cndmask_b32_e64 v89, 0, v89, s16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v86, 0, v86, s6
.Ltmp37:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v95, v95, v95
.Ltmp38:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v214
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s5
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v85, v89
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v90
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v94, v94, v95
.Ltmp42:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v178
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v214 :: v_dual_sub_f32 v92, v92, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v95, v94
.Ltmp44:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[186:193], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[190:193], v166
	ds_load_b128 v[186:189], v165
	ds_load_b128 v[198:201], v165 offset:2048
	ds_load_b128 v[202:205], v166 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s14
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v82, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v79, v79, v178 :: v_dual_add_f32 v86, v86, v89
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v95, v95, v95
.Ltmp48:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v214
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v91
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v85, v85, v86 :: v_dual_max_f32 v94, v94, v95
.Ltmp50:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v95, v174, v174
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[186:193], v[65:72], v[17:24]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v174, v95, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s13
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[190:193], v185 offset:2048
	ds_load_b128 v[206:209], v185 offset:3072
	v_mov_b32_e32 v189, v100
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v184, v76, v174
	v_sub_f32_e32 v95, v73, v174
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v78
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v74, v174
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v74.h, v177.l
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v87, v89
.Ltmp52:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v75, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v75.h, v177.l
	v_mov_b16_e64 v76.h, v177.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v78.h, v177.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v210, v174
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v211, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v185
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_o_f32_e64 s25, v73, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v178
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v186
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v88, v89
.Ltmp54:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v95
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v77.h, v177.l
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v87, v88
.Ltmp56:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v89, 0, v89, s15
	v_cndmask_b32_e64 v74, 0, v74, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v90
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, v74.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v74, v74
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v73.h, s25
	v_cndmask_b16 v75.l, 0x7fff, v74.h, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v75, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v74, v75, v138
	v_perm_b32 v74, v74, v75, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v80.h, v177.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v76.l, v75.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v75, v75
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v79.h, v177.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v77.l, v76.h
	v_cmp_o_f32_e64 s21, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v76, v76, v77, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v75.h, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s21
	v_permlanex16_b32 v76, v77, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v75, v76, v77, v138
	v_perm_b32 v76, v76, v77, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v82
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v82, v175, v175
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v214 :: v_dual_max_f32 v82, v82, v93
	v_mul_f32_e32 v4, v4, v214
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.l, v77.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v77, v77
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s20, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v78, v78, v79, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v77.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.l, 0x7fff, v78.h, s20
	v_permlanex16_b32 v78, v79, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v77, v78, v79, v138
	v_perm_b32 v78, v78, v79, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v84
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v84, v175, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v79.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v214
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	v_mov_b16_e64 v80.h, v177.l
	v_mov_b32_e32 v177, v99
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v83, v83, v178 :: v_dual_add_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v83
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v89, v90
	v_mov_b32_e32 v89, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v81.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v81, v81
	v_and_b32_e32 v80, 1, v80
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[190:197], v[65:72], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v80, v81, v80, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v79.h, s19
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v175
	v_dual_mov_b32 v175, v82 :: v_dual_add_f32 v82, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v81.l, 0x7fff, v80.h, s18
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v176
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v214
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v80, v81, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v79, v80, v81, v138
	v_perm_b32 v80, v80, v81, v139
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v81, v176, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v212, v174
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v81, v81, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v187
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v83, v176, v81 :: v_dual_mov_b32 v176, v81
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v83, v83
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v91, 0, v91, s3
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v188, v213, v174 :: v_dual_add_f32 v91, v91, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v93, v188
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v93, 0, v93, s8
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v93
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v93, 0, v83, s18
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v83, v82
.Ltmp64:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v214 :: v_dual_add_f32 v81, v91, v92
	v_mul_f32_e32 v6, v6, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v87, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v91, v82, v83
.Ltmp67:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v84, v84
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v90, 0, v84, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v84, v81 :: v_dual_add_f32 v99, v91, v94
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v99, v177, v90
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v81, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v95, v92
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v214 :: v_dual_add_f32 v100, v92, v95
	v_dual_mul_f32 v3, v3, v214 :: v_dual_fmac_f32 v100, v189, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[198:205], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v164
	ds_load_b128 v[65:68], v163
	ds_load_b128 v[81:84], v163 offset:2048
	ds_load_b128 v[183:186], v167
	ds_load_b128 v[85:88], v164 offset:2048
	ds_load_b128 v[210:213], v167 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[73:80], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[179:186], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[206:213], v[73:80], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v33, v107 :: v_dual_mov_b32 v34, v106
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v34, 0x80, v34
	v_add_nc_u32_e32 v33, 0, v33
	v_lshl_add_u32 v35, v105, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s45, s45, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_b64 v35, v[99:100]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v33, v34, v0
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 4, v103
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v102
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 32, v35
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v0, v101
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s47, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s46, v36
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s60, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v42
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v50, null, v37, v37, v29
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v52, null, v37, v37, v30
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v49, 1.0
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_div_scale_f32 v43, s2, v27, v37, v27
	v_div_scale_f32 v45, s3, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v43, v48
	v_div_scale_f32 v51, s4, v29, v37, v29
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v59, v45, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fma_f32 v61, -v38, v55, v39
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v64, -v44, v59, v45
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v58, v60, v58
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_mul_f32 v54, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v64, v49
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v44, v59, v45
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s2, v30, v37, v30
	v_div_scale_f32 v43, null, v37, v37, v32
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v45, v39, v58
	v_div_fixup_f32 v27, v40, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v38, 1.0
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v44, null, v37, v37, v17
	v_fma_f32 v40, -v52, v45, v39
	v_fmac_f32_e32 v38, v46, v38
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v48, -v50, v54, v51
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v40, v58
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s3, v31, v37, v31
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v50, -v42, v40, v41
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_scale_f32 v46, s5, v32, v37, v32
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s2, v17, v37, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s3, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s4, v19, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s2, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s3, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s5, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s2, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s3, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v37, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s3, v16, v37, v16
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s4, v1, v37, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v2, v37, v2
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v44, s2, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_fixup_f32 v15, v40, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	v_fmac_f32_e32 v41, v46, v55
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v37, v8
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s60, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v36, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s60, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v37
	v_add_nc_u32_e32 v38, 16, v37
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s60, v34
	v_cmp_gt_i32_e64 s3, s60, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v36, v0, 2
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_dual_cndmask_b32 v39, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v25, v39, s[44:47], 0 offen
	buffer_store_b32 v26, v35, s[44:47], 0 offen
	buffer_store_b32 v27, v38, s[44:47], 0 offen
	v_add_nc_u32_e32 v35, 48, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_add_nc_u32 v38, 56, v37
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_add_nc_u32 v27, 40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_add_nc_u32 v26, 32, v37
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_add_nc_u32 v25, 24, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
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
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
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
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12040
; TotalNumSgprs: 70
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 70
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
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
