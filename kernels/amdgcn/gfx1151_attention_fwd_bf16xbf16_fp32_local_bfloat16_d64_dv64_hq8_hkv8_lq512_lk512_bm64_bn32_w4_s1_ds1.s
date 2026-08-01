	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x80
	s_load_b32 s50, s[0:1], 0x5c
.Ltmp0:
	.loc	1 760 21 prologue_end           ; attention.py:760:21
	v_and_b32_e32 v33, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v66, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s39, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s51, s3, 9
	s_load_b64 s[8:9], s[0:1], 0x0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v65, 3, v33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s39, v66
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s37, s39, s51
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v67, 1, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, 0x200, v34
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v113, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v17, 0x70, v67
	v_lshlrev_b32_e32 v118, 2, v0
	v_lshrrev_b32_e32 v119, 4, v0
	v_lshlrev_b32_e32 v120, 4, v0
	v_lshlrev_b32_e32 v121, 3, v113
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[102:103], null, s50, v66, v[65:66]
	s_mul_i32 s2, s50, s37
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s50, v65
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s50, 5
	s_mul_i32 s7, s50, 48
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v120, v17
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v1, s2, v102
	v_lshl_add_u32 v116, s50, 4, v102
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s33, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v122, 0, v17
	v_add_lshl_u32 v4, v1, s6, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v3, v116, s2, 1
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s7, 1
	s_load_b64 s[6:7], s[0:1], 0x78
	v_cndmask_b32_e32 v9, 0x80000000, v4, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v3 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	buffer_load_b128 v[13:16], v13, s[8:11], 0 offen
	s_mov_b32 s8, 0
	s_waitcnt vmcnt(3)
	ds_store_b128 v122, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v122, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v122, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v122, v[13:16] offset:6144
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s39, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s39, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s5
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s5
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s64, s9, 0x7fffffe0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s2, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s10, s10, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s65, s2, s10
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s65, s65, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s64, s65
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v35, 3, v113
	v_lshlrev_b32_e32 v36, 2, v0
	v_lshrrev_b32_e32 v37, 4, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
.LBB0_3:                                ; %Flow229
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v115, 0x60, v0
	v_and_b32_e32 v114, 16, v0
	v_and_b32_e32 v117, 0x78, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s2, 0, v114
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
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v105, v8
	v_mov_b32_e32 v103, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, 16, v34
	v_or_b32_e32 v2, 32, v34
	s_clause 0x2
	s_load_b128 s[12:15], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[52:53], s[0:1], 0x30
	v_dual_mov_b32 v19, 0x7632 :: v_dual_add_nc_u32 v4, s5, v34
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, s5, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 48, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v127, s6, v4
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v128, s7, v4
	v_subrev_nc_u32_e32 v130, s6, v2
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v133, s7, v2
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v2, 6, v115
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v4, 4, v33
	v_mov_b32_e32 v26, v25
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v129, s6, v1
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v132, s7, v1
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v1, 7, v113
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v3, s5, v3
	v_dual_mov_b32 v18, 0x5410 :: v_dual_lshlrev_b32 v123, 2, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v4
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v131, s6, v3
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v134, s7, v3
	v_or_b32_e32 v135, v4, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v66
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x70, v2, 0
	v_xad_u32 v5, 0x60, v2, 0
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[33:36], v5
	v_xad_u32 v3, 0x50, v2, 0
	v_xad_u32 v5, v2, 64, 0
	v_xad_u32 v6, v2, 48, 0
	v_xad_u32 v7, v2, 32, 0
	v_xad_u32 v8, v2, 16, 0
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v124, 1, v123
	v_or_b32_e32 v125, 2, v123
	v_or_b32_e32 v126, 3, v123
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[45:48], v3
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[53:56], v6
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[61:64], v8
	ds_load_b128 v[57:60], v2
	v_lshl_add_u32 v12, s15, 4, v1
	v_lshl_add_u32 v13, s15, 5, v1
	v_mad_u64_u32 v[2:3], null, s15, 48, v[1:2]
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v136, v123, v1
	v_lshlrev_b32_e32 v1, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v137, v123, v12
	v_add_nc_u32_e32 v138, v124, v12
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_add_nc_u32 v139, v125, v12
	v_add_nc_u32_e32 v140, v126, v12
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v3, 9, v0
	v_and_b32_e32 v12, 64, v1
	v_xor_b32_e32 v5, 16, v135
	v_xor_b32_e32 v10, 0x60, v135
	v_add_nc_u32_e32 v141, v123, v13
	v_add_nc_u32_e32 v142, v124, v13
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_add_nc_u32 v143, v125, v13
	v_add_nc_u32_e32 v144, v126, v13
	v_and_b32_e32 v13, 0x1b8, v118
	v_lshlrev_b32_e32 v14, 5, v114
	v_and_or_b32 v3, 0x1c00, v3, v12
	v_dual_mov_b32 v103, v25 :: v_dual_and_b32 v16, 0x7c, v118
	v_dual_mov_b32 v179, 0xff800000 :: v_dual_add_nc_u32 v154, 0, v5
	v_dual_mov_b32 v104, v25 :: v_dual_add_nc_u32 v159, 0, v10
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v5, v25
	v_or3_b32 v147, v3, v14, v13
	v_and_b32_e32 v17, 2, v119
	v_dual_mov_b32 v105, v25 :: v_dual_and_b32 v20, 0x80, v67
	v_and_or_b32 v1, 0x700, v1, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v16, 48, v147
	v_xor_b32_e32 v3, 8, v147
	v_and_b32_e32 v0, 0x70, v0
	v_add_nc_u32_e32 v145, v123, v2
	v_add_nc_u32_e32 v146, v124, v2
	v_add_nc_u32_e32 v167, 0, v16
	v_mov_b32_e32 v16, v25
	v_or3_b32 v151, v1, v20, v17
	v_add_nc_u32_e32 v162, 0, v3
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v148, v125, v2
	v_add_nc_u32_e32 v149, v126, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v3, 0x70, v151
	v_lshl_or_b32 v4, v115, 3, v4
	v_cndmask_b32_e64 v18, 0x1054, v18, s2
	v_cndmask_b32_e64 v19, 0x3276, v19, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_add_nc_u32_e32 v176, 0, v3
	v_mov_b32_e32 v3, v25
	v_lshrrev_b32_e32 v12, 1, v0
	v_lshl_or_b32 v0, v0, 6, v121
	v_lshl_or_b32 v1, v19, 8, v19
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v6, 32, v135
	s_add_i32 s0, s3, s0
	v_xor_b32_e32 v2, v0, v12
	v_lshrrev_b32_e32 v0, 1, v117
	v_and_b32_e32 v21, 0x760076, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_xor_b32_e32 v7, 48, v135
	v_dual_mov_b32 v106, v25 :: v_dual_add_nc_u32 v161, 0, v2
	v_xor_b32_e32 v150, v4, v0
	v_lshl_or_b32 v0, v18, 8, v18
	v_xor_b32_e32 v2, 0x60, v151
	v_xor_b32_e32 v8, 64, v135
	v_xor_b32_e32 v9, 0x50, v135
	v_xor_b32_e32 v11, 0x70, v135
	v_and_b32_e32 v20, 0x540054, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[0:1], null, s38, v66, v[65:66]
	v_xor_b32_e32 v12, 16, v147
	v_xor_b32_e32 v13, 24, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v20, 4, v20
	v_xor_b32_e32 v14, 32, v147
	v_xor_b32_e32 v15, 40, v147
	v_xor_b32_e32 v4, 56, v147
	v_xor_b32_e32 v17, 0x440, v150
	v_xor_b32_e32 v18, 16, v151
	v_xor_b32_e32 v19, 32, v151
	v_xor_b32_e32 v22, 48, v151
	v_and_b32_e32 v152, 0x5040504, v1
	v_xor_b32_e32 v1, 0x50, v151
	v_add_nc_u32_e32 v175, 0, v2
	v_mov_b32_e32 v2, v25
	v_lshl_or_b32 v20, v21, 4, v21
	v_xor_b32_e32 v21, 64, v151
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s14, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s13, s0
	v_and_b32_e32 v153, 0x7060706, v20
	v_add_nc_u32_e32 v155, 0, v6
	v_mov_b32_e32 v6, v25
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_add_nc_u32 v156, 0, v7
	v_add_nc_u32_e32 v157, 0, v8
	v_mov_b32_e32 v8, v25
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v158, 0, v9
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_add_nc_u32 v160, 0, v11
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_add_nc_u32 v163, 0, v12
	v_add_nc_u32_e32 v164, 0, v13
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v165, 0, v14
	v_add_nc_u32_e32 v166, 0, v15
	v_add_nc_u32_e32 v168, 0, v4
	v_add_nc_u32_e32 v169, 0, v17
	v_add_nc_u32_e32 v170, 0, v18
	v_add_nc_u32_e32 v171, 0, v19
	v_add_nc_u32_e32 v172, 0, v22
	v_add_nc_u32_e32 v173, 0, v21
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v174, 0, v1
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v7, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v177, 3, v136
	v_lshl_add_u32 v178, v113, 1, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s66, s12, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s15, s39
	s_add_i32 s67, s1, s0
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s40, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_add_i32 s67, s67, s3
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s68, s38, 4
	s_and_b32 s61, s11, 0xffff
	s_mov_b32 s56, s8
	s_mov_b32 s57, s9
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s60, s10
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s38, v65
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s26, s64, s51
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s47 :: v_dual_add_nc_u32 v73, 0, v135
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s26, s50
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s46 :: v_dual_mov_b32 v70, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v83, s0, v102, 1
	v_add_lshl_u32 v84, s0, v116, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s44 :: v_dual_mov_b32 v68, s43
	v_dual_mov_b32 v67, s42 :: v_dual_mov_b32 v66, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v83, 0x80000000, v83, s4
	v_cndmask_b32_e64 v90, 0x80000000, v84, s4
	s_clause 0x1
	buffer_load_b128 v[83:86], v83, s[56:59], 0 offen
	buffer_load_b128 v[90:93], v90, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v65, s40 :: v_dual_add_nc_u32 v74, 0, v147
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v76, s64, v124
	v_or_b32_e32 v75, s64, v125
	v_or_b32_e32 v77, s64, v123
	v_or_b32_e32 v78, s64, v126
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v80, 1, v136
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v76, v127
	v_cmp_ge_i32_e64 s11, v76, v129
	v_cmp_ge_i32_e64 s12, v76, v130
	v_cmp_ge_i32_e64 s13, v76, v131
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v76, v128
	v_cmp_le_i32_e64 s15, v76, v132
	v_cmp_le_i32_e64 s16, v76, v133
	v_cmp_le_i32_e64 s17, v76, v134
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v75, v127
	v_cmp_ge_i32_e64 s19, v75, v129
	v_cmp_ge_i32_e64 s20, v75, v130
	v_cmp_ge_i32_e64 s21, v75, v131
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v75, v128
	v_cmp_le_i32_e64 s23, v75, v132
	v_cmp_le_i32_e64 s24, v75, v133
	v_cmp_le_i32_e64 s25, v75, v134
	v_mad_u64_u32 v[75:76], null, s26, s38, v[0:1]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v77, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v77, v128
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s27, s67, s64
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v77, v130
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v77, v133
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v78, v127
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v78, v128
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v77, v129
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v77, v132
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v87, s27, v136, 2
	v_add_lshl_u32 v88, s27, v177, 2
	v_add_lshl_u32 v94, s27, v137, 2
	v_add_lshl_u32 v95, s27, v138, 2
	v_add_lshl_u32 v96, s27, v139, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v77, v131
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v77, v134
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v77, s27, v149, 2
	v_add_lshl_u32 v76, s27, v80, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v78, v130
	v_cmp_ge_i32_e64 s29, v78, v131
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v78, v132
	v_cmp_le_i32_e64 s34, v78, v133
	v_cmp_le_i32_e64 s35, v78, v134
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s6
	s_and_b32 s6, s10, s14
	s_and_b32 s10, s18, s22
	s_and_b32 s14, s26, s30
	s_and_b32 s11, s11, s15
	s_and_b32 s15, s19, s23
	s_and_b32 s19, s3, s8
	s_and_b32 s3, s33, s0
	s_and_b32 s1, s1, s7
	s_and_b32 s7, s33, s10
	s_and_b32 s12, s12, s16
	s_and_b32 s20, s20, s24
	s_and_b32 s22, s28, s34
	s_and_b32 s9, s5, s9
	s_and_b32 s13, s13, s17
	s_and_b32 s23, s29, s35
	s_and_b32 s16, s33, s14
	s_and_b32 s21, s21, s25
	s_and_b32 s8, s33, s1
	s_and_b32 s0, s33, s6
	s_and_b32 s1, s33, s11
	s_and_b32 s10, s33, s15
	s_and_b32 s5, s33, s19
	s_and_b32 s17, s33, s20
	s_and_b32 s6, s33, s22
	s_and_b32 s9, s33, s9
	s_and_b32 s13, s33, s13
	s_and_b32 s20, s33, s23
	s_and_b32 s19, s33, s21
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v77, 0x80000000, v77, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s64, s64, 32
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v122, v[83:86]
	s_waitcnt vmcnt(0)
	ds_store_b128 v122, v[90:93] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[192:195], v154
	ds_load_b128 v[188:191], v73
	ds_load_b128 v[196:199], v73 offset:2048
	ds_load_b128 v[200:203], v154 offset:2048
	ds_load_b128 v[208:211], v156
	ds_load_b128 v[204:207], v155
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s27, v140, 2
	v_add_lshl_u32 v83, s27, v141, 2
	v_add_lshl_u32 v84, s27, v142, 2
	v_add_lshl_u32 v85, s27, v143, 2
	v_add_lshl_u32 v86, s27, v144, 2
	v_add_lshl_u32 v90, s27, v145, 2
	v_add_lshl_u32 v91, s27, v146, 2
	v_add_lshl_u32 v92, s27, v148, 2
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[212:219], v[188:195], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[196:203], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v155 offset:2048
	ds_load_b128 v[69:72], v156 offset:2048
	ds_load_b128 v[200:203], v158
	ds_load_b128 v[196:199], v157
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[212:219], v[204:211], v[49:56], v[212:219]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[65:72], v[49:56], v[188:195]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v157 offset:2048
	ds_load_b128 v[69:72], v158 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[212:219], v[196:203], v[41:48], v[212:219]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[200:203], v160
	ds_load_b128 v[196:199], v159
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[65:72], v[41:48], v[188:195]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v159 offset:2048
	ds_load_b128 v[69:72], v160 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[212:219], v[196:203], v[33:40], v[212:219]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v198.h, v187.h
	v_mov_b16_e64 v196.h, v187.h
	v_mov_b16_e64 v197.h, v187.h
	v_mov_b16_e64 v199.h, v187.h
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[188:195], v[65:72], v[33:40], v[188:195]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, v75, s68, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v81, 2, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v75
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v67, 0x80000000, v87, s3
	v_cndmask_b32_e64 v70, 0x80000000, v88, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v98, 0x80000000, v66, vcc_lo
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v80, s27, v81, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v78, v129
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v71, 0x80000000, v94, s8
	v_cndmask_b32_e64 v68, 0x80000000, v76, s0
	v_cndmask_b32_e64 v72, 0x80000000, v95, s1
	v_cndmask_b32_e64 v69, 0x80000000, v80, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s27, s31
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v75, 0x80000000, v96, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s33, s18
	s_and_b32 s18, s33, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s11
	v_cndmask_b32_e64 v76, 0x80000000, v83, s5
	v_cndmask_b32_e64 v78, 0x80000000, v84, s18
	v_cndmask_b32_e64 v80, 0x80000000, v85, s17
	v_cndmask_b32_e64 v81, 0x80000000, v86, s6
	v_cndmask_b32_e64 v83, 0x80000000, v90, s9
	v_cndmask_b32_e64 v84, 0x80000000, v91, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v96, 0x80000000, v65 :: v_dual_add_nc_u32 v79, 0, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v85, 0x80000000, v92, s19
	s_clause 0xf
	buffer_load_b32 v65, v67, s[52:55], 0 offen
	buffer_load_b32 v66, v69, s[52:55], 0 offen
	buffer_load_b32 v69, v70, s[52:55], 0 offen
	buffer_load_b32 v70, v71, s[52:55], 0 offen
	buffer_load_b32 v73, v73, s[52:55], 0 offen
	buffer_load_b32 v71, v72, s[52:55], 0 offen
	buffer_load_b32 v67, v68, s[52:55], 0 offen
	buffer_load_b32 v72, v75, s[52:55], 0 offen
	buffer_load_b32 v75, v76, s[52:55], 0 offen
	buffer_load_b32 v76, v80, s[52:55], 0 offen
	buffer_load_b32 v80, v81, s[52:55], 0 offen
	buffer_load_b32 v81, v83, s[52:55], 0 offen
	buffer_load_b32 v86, v77, s[52:55], 0 offen
	buffer_load_b32 v83, v84, s[52:55], 0 offen
	buffer_load_b32 v77, v78, s[52:55], 0 offen
	buffer_load_b32 v84, v85, s[52:55], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v65, 0xff800000, v65, s3
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v66, 0xff800000, v66, s7
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v68, 0xff800000, v69, s16
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v69, 0xff800000, v70, s8
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v71, 0xff800000, v71, s1
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v67, 0xff800000, v67, s0
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v70, 0xff800000, v72, s10
	v_cndmask_b32_e64 v72, 0xff800000, v73, s11
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v75, 0xff800000, v75, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v78, 0xff800000, v80, s6
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v80, 0xff800000, v81, s9
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v70
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v83, 0xff800000, v83, s13
	v_cndmask_b32_e64 v76, 0xff800000, v76, s17
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v81, 0xff800000, v84, s19
	v_cndmask_b32_e64 v77, 0xff800000, v77, s18
	v_cndmask_b32_e64 v84, 0xff800000, v86, s20
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v65
	v_cmp_neq_f32_e64 s21, 0xff800000, v66
	v_cmp_neq_f32_e64 s12, 0xff800000, v67
	v_cmp_neq_f32_e64 s23, 0xff800000, v69
	v_cmp_neq_f32_e64 s15, 0xff800000, v71
	v_cmp_neq_f32_e64 s30, 0xff800000, v80
	v_cmp_neq_f32_e64 s31, 0xff800000, v83
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, s10, s24
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b64 v161, v[65:66], v[69:70] offset1:16
	ds_store_2addr_b64 v161, v[67:68], v[71:72] offset0:64 offset1:80
	ds_store_2addr_b64 v161, v[75:76], v[80:81] offset0:32 offset1:48
	ds_store_2addr_b64 v161, v[77:78], v[83:84] offset0:96 offset1:112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s10
	s_and_b32 s12, s0, s12
	s_and_b32 s0, s9, s30
	s_and_b32 s9, s1, s15
	s_and_b32 s1, s13, s31
	s_and_b32 s15, s3, s14
	s_and_b32 s14, s7, s21
	s_and_b32 s13, s8, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v68, 0, 1, s14
	v_cndmask_b32_e64 v66, 0, 1, s13
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v81
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v77
	v_cmp_neq_f32_e64 s27, 0xff800000, v76
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v80.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v68.l
	s_and_b32 s7, s19, s34
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v77, 0, 1, s7
	v_cndmask_b32_e64 v81, 0, 1, s0
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v75
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s17, s27
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v78
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v78, 0, 1, s8
	v_or_b16 v80.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v77.l
	v_mov_b16_e32 v66.l, v81.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s5, s26
	v_cndmask_b32_e64 v81, 0, 1, s9
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s5
	s_and_b32 s11, s11, s25
	s_and_b32 s17, s16, s22
	v_cndmask_b32_e64 v73, 0, 1, s11
	v_or_b16 v77.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v78.l
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v68, 0, 1, s17
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v84
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s12
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s6, s6, s29
	s_and_b32 s18, s18, s28
	s_and_b32 s16, s20, s35
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v77.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v73.l
	v_mov_b16_e32 v66.l, v81.l
	v_cndmask_b32_e64 v78, 0, 1, s16
	v_cndmask_b32_e64 v81, 0, 1, s6
	.loc	1 880 35                        ; attention.py:880:35
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[85:86], v74
	ds_load_b64 v[87:88], v162
	ds_load_b64 v[90:91], v163
	ds_load_b64 v[92:93], v164
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v82, 0, v151
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[69:70], v165
	ds_load_b64 v[71:72], v166
	ds_load_b64 v[75:76], v167
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v89, 0, v120
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v73.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v68.l
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s1
	v_cndmask_b32_e64 v68, 0, 1, s18
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v97
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s64, s65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v73.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v78.l
	v_mov_b16_e32 v66.l, v81.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v78, 0x3fb8aa3b, v85
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v84, 0x3fb8aa3b, v88 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v90
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_lshlrev_b16 v65.h, 8, v66.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v90, 0x3fb8aa3b, v69 :: v_dual_mul_f32 v81, 0x3fb8aa3b, v86
	v_mul_f32_e32 v86, 0x3fb8aa3b, v91
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v67.h, v67.l, v65.l
	v_or_b16 v67.l, v68.l, v65.h
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[65:66], v168
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v79, v80, v77 offset1:32
	ds_store_2addr_b32 v169, v73, v67 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v91, 0x3fb8aa3b, v70
	v_dual_mul_f32 v83, 0x3fb8aa3b, v87 :: v_dual_mul_f32 v88, 0x3fb8aa3b, v93
	v_dual_mul_f32 v87, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v92, 0x3fb8aa3b, v71
	v_dual_mul_f32 v93, 0x3fb8aa3b, v72 :: v_dual_fmac_f32 v84, s66, v215
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v78, s66, v212 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v75
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v76 :: v_dual_fmac_f32 v81, s66, v213
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v88, s66, v219 :: v_dual_fmac_f32 v83, s66, v214
	v_fmac_f32_e32 v86, s66, v217
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v95, 0x3fb8aa3b, v65
	v_mul_f32_e32 v99, 0x3fb8aa3b, v66
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_u16_d16 v65, v82
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v170
	ds_load_u16_d16 v66, v171
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v172
	ds_load_u16_d16 v67, v173
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v174
	ds_load_u16_d16 v68, v175
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v176
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, s66, v218 :: v_dual_fmac_f32 v90, s66, v188
	v_dual_fmac_f32 v85, s66, v216 :: v_dual_fmac_f32 v92, s66, v190
	v_dual_fmac_f32 v93, s66, v191 :: v_dual_fmac_f32 v76, s66, v193
	v_fmac_f32_e32 v75, s66, v192
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v69.l, 1, v65.l
	v_and_b16 v69.h, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v65.h
	v_and_b16 v70.l, 1, v66.l
	v_lshrrev_b16 v65.l, 8, v65.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_and_b16 v70.h, 1, v66.h
	v_and_b16 v65.h, 1, v65.h
	v_lshrrev_b16 v66.h, 8, v66.h
	v_and_b16 v71.l, 1, v67.l
	v_lshrrev_b16 v67.l, 8, v67.l
	v_and_b16 v71.h, 1, v67.h
	v_and_b16 v72.l, 1, v68.l
	v_and_b16 v72.h, 1, v68.h
	v_lshrrev_b16 v67.h, 8, v67.h
	v_lshrrev_b16 v68.l, 8, v68.l
	v_lshrrev_b16 v68.h, 8, v68.h
	v_and_b16 v65.l, 1, v65.l
	v_and_b16 v66.l, 1, v66.l
	v_cmp_eq_u16_e64 s34, 1, v65.h
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v67.l, 1, v67.l
	v_cmp_eq_u16_e64 s3, 1, v69.l
	v_and_b16 v67.h, 1, v67.h
	v_and_b16 v68.l, 1, v68.l
	v_and_b16 v68.h, 1, v68.h
	v_cmp_eq_u16_e64 s29, 1, v70.l
	v_cmp_eq_u16_e64 s30, 1, v70.h
	v_cmp_eq_u16_e64 s19, 1, v72.h
	v_cmp_eq_u16_e64 s31, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v84, s34
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v95, s66, v194
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v66.l
	v_cmp_eq_u16_e64 s28, 1, v69.h
	v_cmp_eq_u16_e64 s36, 1, v66.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v78, s3
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v91, s66, v189
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v71.l
	v_cmp_eq_u16_e64 s26, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v87, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v71.h
	v_cmp_eq_u16_e64 s21, 1, v72.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v95, s19
	v_cndmask_b32_e64 v95, 0xff800000, v81, s31
	v_cndmask_b32_e64 v190, 0xff800000, v86, s35
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v99, s66, v195
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v67.h
	v_cmp_eq_u16_e64 s22, 1, v68.l
	v_cmp_eq_u16_e64 s20, 1, v68.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v83, s28
	v_cndmask_b32_e64 v189, 0xff800000, v85, s29
	v_cndmask_b32_e64 v192, 0xff800000, v88, s36
	v_cndmask_b32_e64 v111, 0xff800000, v90, s25
	v_cndmask_b32_e64 v112, 0xff800000, v91, s26
	v_cndmask_b32_e64 v109, 0xff800000, v92, s23
	v_cndmask_b32_e64 v107, 0xff800000, v75, s21
	v_cndmask_b32_e64 v110, 0xff800000, v93, s24
	v_cndmask_b32_e64 v108, 0xff800000, v76, s22
	v_cndmask_b32_e64 v88, 0xff800000, v99, s20
	ds_store_b64 v74, v[94:95]
	ds_store_b64 v162, v[69:70]
	ds_store_b64 v163, v[189:190]
	ds_store_b64 v164, v[191:192]
	ds_store_b64 v165, v[111:112]
	ds_store_b64 v166, v[109:110]
	ds_store_b64 v167, v[107:108]
	ds_store_b64 v168, v[87:88]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[78:81], v96, s[60:63], 0 offen
	buffer_load_b128 v[98:101], v98, s[60:63], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v94, v95
	v_max3_f32 v66, v70, v189, v190
	v_max3_f32 v67, v112, v109, v110
	v_max3_f32 v68, v107, v108, v87
	v_max3_f32 v71, v191, v192, v111
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[90:93], v161 offset1:16
	ds_load_2addr_b64 v[74:77], v161 offset0:96 offset1:112
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v69, v66
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[83:86], v161 offset0:64 offset1:80
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v67, v68, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v65, v71, v66
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v188, v97, v65, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v69, v188
	v_sub_f32_e32 v69, v189, v188
	v_sub_f32_e32 v68, v70, v188
	v_sub_f32_e32 v66, v94, v188
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v97, v188
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v190, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v66, v66
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v192, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s29
	v_cndmask_b32_e64 v68, 0, v68, s34
	v_cndmask_b32_e64 v66, 0, v66, s3
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v189, 0, v73, s27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v191, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v198.l, v69.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v95, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.l, v66.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v189
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v96, 1, v198
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v25, v25, v189 :: v_dual_and_b32 v94, 1, v196
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v94, 0x7fff
	v_cmp_o_f32_e64 s36, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v94.l, 0x7fff, v66.h, s34
	v_add3_u32 v69, v69, v96, 0x7fff
	v_mov_b16_e64 v199.l, v71.h
	v_cmp_o_f32_e64 s31, v71, v71
	v_mov_b16_e64 v187.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v189 :: v_dual_and_b32 v97, 1, v199
	v_mul_f32_e32 v32, v32, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v82, 1, v187
	v_mov_b16_e64 v187.l, v68.h
	v_cmp_o_f32_e64 s30, v72, v72
	v_add3_u32 v71, v71, v97, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v82, 0x7fff
	v_and_b32_e32 v82, 1, v187
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.l, v70.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v94.h, 0x7fff, v65.h, s3
	v_add3_u32 v66, v68, v82, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v187
	v_mov_b16_e64 v187.l, v72.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v66.h, s36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v70, v70
	v_and_b32_e32 v82, 1, v187
	v_add3_u32 v70, v70, v65, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s29
	v_mov_b16_e64 v197.l, v67.h
	v_cmp_o_f32_e64 s35, v67, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s28
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v95, 1, v197
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v189
	v_mul_f32_e32 v20, v20, v189
	v_mul_f32_e32 v21, v21, v189
	v_mul_f32_e32 v22, v22, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v95, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v189
	v_mul_f32_e32 v24, v24, v189
	v_mul_f32_e32 v9, v9, v189
	v_mul_f32_e32 v10, v10, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s35
	v_permlanex16_b32 v67, v94, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v189
	v_mul_f32_e32 v12, v12, v189
	v_mul_f32_e32 v13, v13, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v69, v68, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v94, v152
	v_perm_b32 v66, v67, v94, v153
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[94:97], v161 offset0:32 offset1:48
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v72, v82, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s31
	v_permlanex16_b32 v71, v70, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v189
	v_mul_f32_e32 v15, v15, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v67.h, s30
	v_perm_b32 v67, v69, v68, v152
	v_perm_b32 v68, v69, v68, v153
	v_perm_b32 v69, v71, v70, v152
	v_perm_b32 v70, v71, v70, v153
	v_permlanex16_b32 v73, v72, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v189
	v_mul_f32_e32 v1, v1, v189
	v_mul_f32_e32 v2, v2, v189
	v_mul_f32_e32 v3, v3, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v73, v72, v152
	v_perm_b32 v72, v73, v72, v153
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v189
	v_mul_f32_e32 v5, v5, v189
	v_mul_f32_e32 v6, v6, v189
	v_mul_f32_e32 v7, v7, v189
	v_mul_f32_e32 v8, v8, v189
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v89, v[78:81]
	s_waitcnt vmcnt(0)
	ds_store_b128 v89, v[98:101] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v192, v178 offset:608
	ds_load_u16_d16 v191, v178 offset:352
	ds_load_u16_d16 v198, v178
	ds_load_u16_d16 v202, v178 offset:1024
	ds_load_u16_d16 v209, v178 offset:832
	ds_load_u16_d16 v210, v178 offset:1088
	ds_load_u16_d16 v203, v178 offset:1280
	ds_load_u16_d16 v211, v178 offset:1344
	ds_load_u16_d16 v204, v178 offset:1536
	ds_load_u16_d16 v212, v178 offset:1600
	ds_load_u16_d16 v205, v178 offset:1792
	ds_load_u16_d16 v200, v178 offset:512
	ds_load_u16_d16 v199, v178 offset:256
	ds_load_u16_d16 v208, v178 offset:576
	ds_load_u16_d16 v201, v178 offset:768
	ds_load_u16_d16 v213, v178 offset:1856
	ds_load_u16_d16 v215, v178 offset:288
	ds_load_u16_d16 v214, v178 offset:32
	ds_load_u16_d16 v206, v178 offset:64
	ds_load_u16_d16 v207, v178 offset:320
	ds_load_u16_d16 v216, v178 offset:544
	ds_load_u16_d16 v217, v178 offset:800
	ds_load_u16_d16 v218, v178 offset:1056
	ds_load_u16_d16 v219, v178 offset:1312
	ds_load_u16_d16 v220, v178 offset:1568
	ds_load_u16_d16 v221, v178 offset:1824
	ds_load_u16_d16 v82, v178 offset:2368
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v191, v178 offset:480
	ds_load_u16_d16 v190, v178 offset:96
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v198, v178 offset:128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v209, v178 offset:960
	ds_load_u16_d16_hi v202, v178 offset:1152
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v210, v178 offset:1216
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v203, v178 offset:1408
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v211, v178 offset:1472
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v204, v178 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v212, v178 offset:1728
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v205, v178 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v200, v178 offset:640
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v199, v178 offset:384
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v208, v178 offset:704
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v201, v178 offset:896
	ds_load_u16_d16 v193, v178 offset:864
	ds_load_u16_d16 v194, v178 offset:1120
	ds_load_u16_d16 v195, v178 offset:1376
	ds_load_u16_d16 v196, v178 offset:1632
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v213, v178 offset:1984
	ds_load_u16_d16 v73, v178 offset:2048
	ds_load_u16_d16 v81, v178 offset:2112
	ds_load_u16_d16 v197, v178 offset:1888
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v214, v178 offset:160
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v206, v178 offset:192
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v190, v178 offset:224
	ds_load_u16_d16_hi v215, v178 offset:416
	ds_load_u16_d16_hi v207, v178 offset:448
	ds_load_u16_d16_hi v216, v178 offset:672
	ds_load_u16_d16_hi v192, v178 offset:736
	ds_load_u16_d16_hi v217, v178 offset:928
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v193, v178 offset:992
	ds_load_u16_d16_hi v218, v178 offset:1184
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v194, v178 offset:1248
	ds_load_u16_d16_hi v219, v178 offset:1440
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v195, v178 offset:1504
	ds_load_u16_d16_hi v220, v178 offset:1696
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v196, v178 offset:1760
	ds_load_u16_d16_hi v221, v178 offset:1952
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v197, v178 offset:2016
	ds_load_u16_d16_hi v73, v178 offset:2176
	ds_load_u16_d16_hi v81, v178 offset:2240
	ds_load_u16_d16 v89, v178 offset:2080
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[198:205], v[65:72], v[25:32]
	v_mov_b32_e32 v99, v104
	s_waitcnt lgkmcnt(15)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[206:213], v[65:72], v[9:16]
	v_dual_mov_b32 v101, v105 :: v_dual_mov_b32 v98, v106
	v_mov_b32_e32 v100, v103
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[214:221], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[190:197], v[65:72], v[1:8]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v83, v83 :: v_dual_max_f32 v66, v90, v90
	v_max_f32_e32 v67, v92, v92
.Ltmp9:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v108, v188
	v_sub_f32_e32 v72, v88, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.h, v187.h
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v66, v65
	v_max_f32_e32 v66, v85, v85
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.h, v187.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v91, v84
	v_max_f32_e32 v66, v67, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v110, v188 :: v_dual_mov_b32 v67, v65
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v66, v93, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp15:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s22
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v184
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s20
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v185
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s24
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v65, v65, v67
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_dual_max_f32 v78, v65, v67 :: v_dual_mov_b32 v65, v66
	v_max_f32_e32 v67, v96, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v79, v66, v65
.Ltmp31:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v65, v179, v179 :: v_dual_max_f32 v66, v180, v180
	v_dual_max_f32 v179, v65, v78 :: v_dual_max_f32 v180, v66, v79
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v74, v74
	v_max_f32_e32 v66, v94, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v90, v179
	v_dual_sub_f32 v90, v91, v179 :: v_dual_sub_f32 v91, v92, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v66, v65 :: v_dual_max_f32 v66, v76, v76
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v93, v180
	v_sub_f32_e32 v85, v85, v180
	v_sub_f32_e32 v86, v86, v180
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v95, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v67, v66 :: v_dual_mov_b32 v67, v65
	v_max3_f32 v66, v66, v97, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v65, v65, v67
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v93, v65, v67
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v65, v66
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v187.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v189, v66, v65
.Ltmp51:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v65, v181, v181 :: v_dual_max_f32 v66, v182, v182
	v_max_f32_e32 v181, v65, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v111, v188 :: v_dual_max_f32 v182, v66, v189
	v_sub_f32_e32 v66, v112, v188
	v_sub_f32_e32 v94, v94, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v179
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v179
	v_sub_f32_e32 v74, v74, v181
	v_sub_f32_e32 v95, v95, v181
	v_dual_sub_f32 v75, v75, v181 :: v_dual_sub_f32 v96, v96, v182
	v_sub_f32_e32 v76, v76, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	v_mov_b16_e64 v187.l, v66.h
	v_cmp_o_f32_e64 s25, v66, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v76, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v67, 0x7fff
	v_and_b32_e32 v67, 1, v187
	v_mov_b16_e64 v187.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s25
	v_permlanex16_b32 v67, v66, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v67, v66, v152
	v_perm_b32 v66, v67, v66, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v109, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v68, v68
	v_mov_b16_e32 v69.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v67, v69, 0x7fff
	v_and_b32_e32 v69, 1, v187
	v_mov_b16_e64 v187.l, v70.h
	v_add3_u32 v68, v68, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v68, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v68, v152
	v_perm_b32 v68, v69, v68, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v107, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v71.l, v69.h
	v_cmp_o_f32_e64 s3, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v69, v69, v71, 0x7fff
	v_and_b32_e32 v71, 1, v187
	v_mov_b16_e64 v187.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s21
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v71, v70, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v69, v71, v70, v152
	v_perm_b32 v70, v71, v70, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v87, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v87.h, v187.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v72, v72
	v_mov_b16_e32 v87.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v87, 0x7fff
	v_and_b32_e32 v87, 1, v187
	v_add3_u32 v72, v72, v87, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s3
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s19
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v87, v72, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v87, v72, v152
	v_perm_b32 v72, v87, v72, v153
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v87, v186, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v107, v87, v78 :: v_dual_max_f32 v78, v185, v185
	v_max_f32_e32 v109, v78, v79
	v_max_f32_e32 v78, v183, v183
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v83
	v_exp_f32_e32 v83, v85
	v_exp_f32_e32 v85, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v111, v78, v93 :: v_dual_max_f32 v78, v184, v184
	v_max_f32_e32 v108, v78, v189
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v78, v186, v107
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s12
	v_cndmask_b32_e64 v83, 0, v83, s9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v85, 0, v85, s8
	v_mov_b32_e32 v186, v107
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v110, v78
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v78, v185, v109
	v_mov_b32_e32 v185, v109
.Ltmp52:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v85, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp53:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v112, v78
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v78, v183, v111
	v_mov_b32_e32 v183, v111
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v107, 0, v110, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v187, v78
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v78, v184, v108
	v_mov_b32_e32 v184, v108
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v108, 0, v112, s20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v197, v78
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v78, v80
	v_exp_f32_e32 v80, v84
	v_exp_f32_e32 v84, v86
	v_exp_f32_e32 v86, v96
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v109, 0, v187, s21
	v_cndmask_b32_e64 v110, 0, v197, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v80, 0, v80, s17
	v_cndmask_b32_e64 v84, 0, v84, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v86, 0, v86, s0
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp55:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v86, v76
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v80
.Ltmp59:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v91
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s13
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v83
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s10
.Ltmp64:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v83, v84
.Ltmp65:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v80, v83
.Ltmp67:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v84, v74
	v_add_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v80, v74
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v74, v80 :: v_dual_sub_f32 v97, v97, v182
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v97
	v_mov_b32_e32 v97, v188
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v77, v77, v182 :: v_dual_add_f32 v74, v74, v80
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s7
.Ltmp75:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v80, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v104, v74, v80 :: v_dual_add_f32 v77, v87, v77
.Ltmp78:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v104, v99, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v75, v76, v77 :: v_dual_mov_b32 v76, v78
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v77, v79
	v_mov_b32_e32 v83, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v76, v78, v76 :: v_dual_add_f32 v77, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v75, v75, v83 :: v_dual_mov_b32 v78, v76
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v83, v75
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v76, v76, v78 :: v_dual_add_f32 v77, v77, v79
	v_dual_add_f32 v75, v75, v83 :: v_dual_mov_b32 v78, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v79, v77
	v_mov_b32_e32 v83, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v76, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v105, v77, v79
	v_add_f32_e32 v106, v75, v83
.Ltmp86:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v74, v178 offset:2304
	ds_load_u16_d16 v75, v178 offset:2560
	ds_load_u16_d16 v83, v178 offset:2624
	ds_load_u16_d16 v76, v178 offset:2816
	ds_load_u16_d16 v84, v178 offset:2880
	ds_load_u16_d16 v189, v178 offset:2144
	ds_load_u16_d16 v85, v178 offset:3136
	ds_load_u16_d16 v78, v178 offset:3328
	ds_load_u16_d16 v86, v178 offset:3392
	ds_load_u16_d16 v79, v178 offset:3584
	ds_load_u16_d16 v87, v178 offset:3648
	ds_load_u16_d16 v80, v178 offset:3840
	ds_load_u16_d16 v88, v178 offset:3904
	ds_load_u16_d16 v191, v178 offset:2656
	ds_load_u16_d16 v77, v178 offset:3072
	ds_load_u16_d16 v192, v178 offset:2912
	ds_load_u16_d16 v190, v178 offset:2400
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v74, v178 offset:2432
	ds_load_u16_d16_hi v82, v178 offset:2496
	ds_load_u16_d16 v90, v178 offset:2336
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v75, v178 offset:2688
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v83, v178 offset:2752
	ds_load_u16_d16 v91, v178 offset:2592
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v76, v178 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v84, v178 offset:3008
	ds_load_u16_d16 v92, v178 offset:2848
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v178 offset:3264
	ds_load_u16_d16 v193, v178 offset:3168
	ds_load_u16_d16 v93, v178 offset:3104
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v86, v178 offset:3520
	ds_load_u16_d16 v194, v178 offset:3424
	ds_load_u16_d16 v94, v178 offset:3360
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v87, v178 offset:3776
	ds_load_u16_d16 v195, v178 offset:3680
	ds_load_u16_d16 v95, v178 offset:3616
	ds_load_u16_d16 v96, v178 offset:3872
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v88, v178 offset:4032
	ds_load_u16_d16 v196, v178 offset:3936
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v77, v178 offset:3200
	ds_load_u16_d16_hi v78, v178 offset:3456
	ds_load_u16_d16_hi v79, v178 offset:3712
	ds_load_u16_d16_hi v80, v178 offset:3968
	ds_load_u16_d16_hi v89, v178 offset:2208
	ds_load_u16_d16_hi v189, v178 offset:2272
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v90, v178 offset:2464
	ds_load_u16_d16_hi v190, v178 offset:2528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v91, v178 offset:2720
	ds_load_u16_d16_hi v191, v178 offset:2784
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v92, v178 offset:2976
	ds_load_u16_d16_hi v192, v178 offset:3040
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v93, v178 offset:3232
	ds_load_u16_d16_hi v193, v178 offset:3296
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v94, v178 offset:3488
	ds_load_u16_d16_hi v194, v178 offset:3552
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v95, v178 offset:3744
	ds_load_u16_d16_hi v195, v178 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v96, v178 offset:4000
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v196, v178 offset:4064
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v103, v100, v107
	v_dual_fmac_f32 v105, v101, v108 :: v_dual_fmac_f32 v106, v98, v110
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[189:196], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v35, v121 :: v_dual_mov_b32 v36, v118
	v_mov_b32_e32 v37, v119
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_and_b32_e32 v0, 0x80, v36
	v_and_b32_e32 v33, 4, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v34, 0, v35
	v_add_nc_u32_e32 v35, 0, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v34, v0, v33
	ds_store_2addr_b64 v35, v[103:104], v[105:106] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 1, v114
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v115
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v0, v113
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s39, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s37, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s38, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v44, null, v37, v37, v28
	v_div_scale_f32 v38, null, v37, v37, v25
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v51, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v44
	v_div_scale_f32 v42, null, v37, v37, v27
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v48, null, v37, v37, v29
	v_rcp_f32_e32 v50, v42
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v45, s4, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v54, v48
	v_fma_f32 v57, -v44, v52, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v53, -v38, v46, 1.0
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s1, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v53, -v42, v50, 1.0
	v_fma_f32 v59, -v48, v54, 1.0
	v_div_scale_f32 v43, s3, v27, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v62, -v51, v55, 1.0
	v_fmac_f32_e32 v52, v57, v52
	v_mul_f32_e32 v58, v39, v46
	v_fmac_f32_e32 v54, v59, v54
	v_div_scale_f32 v56, null, v37, v37, v31
	v_fmac_f32_e32 v55, v62, v55
	v_mul_f32_e32 v63, v45, v52
	v_fma_f32 v57, -v38, v58, v39
	v_div_scale_f32 v49, s5, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v44, v63, v45
	v_fmac_f32_e32 v50, v53, v50
	v_dual_fmac_f32 v58, v57, v46 :: v_dual_fmac_f32 v63, v59, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v41, v47 :: v_dual_mul_f32 v60, v43, v50
	v_fma_f32 v38, -v38, v58, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v40, v53, v41
	v_fma_f32 v57, -v42, v60, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v46, v58
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v61, v47
	v_fmac_f32_e32 v60, v57, v50
	v_div_fixup_f32 v25, v38, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v40, v53, v41
	v_fma_f32 v40, -v42, v60, v43
	v_rcp_f32_e32 v41, v56
	v_div_scale_f32 v43, null, v37, v37, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v47, v53
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v30, v37, v30
	v_rcp_f32_e32 v47, v43
	v_div_fmas_f32 v38, v40, v50, v60
	v_div_fixup_f32 v26, v39, v37, v26
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v56, v41, 1.0
	v_fma_f32 v39, -v44, v63, v45
	v_mul_f32_e32 v45, v42, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v38, v37, v27
	v_fmac_f32_e32 v41, v46, v41
	v_div_fmas_f32 v39, v39, v52, v63
	v_fma_f32 v46, -v43, v47, 1.0
	v_mul_f32_e32 v40, v49, v54
	v_fma_f32 v38, -v51, v45, v42
	v_div_scale_f32 v52, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v44, -v48, v40, v49
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, s4, v31, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v38, v55 :: v_dual_fmac_f32 v40, v44, v54
	v_div_scale_f32 v44, null, v37, v37, v17
	v_mul_f32_e32 v38, v39, v41
	v_div_scale_f32 v46, s6, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v48, v40, v49
	v_rcp_f32_e32 v49, v44
	v_fma_f32 v42, -v51, v45, v42
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v48, v54, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v56, v38, v39
	v_div_fmas_f32 v42, v42, v55, v45
	v_rcp_f32_e32 v45, v52
	v_div_fixup_f32 v29, v40, v37, v29
	v_fma_f32 v51, -v44, v49, 1.0
	v_mul_f32_e32 v50, v46, v47
	v_fmac_f32_e32 v38, v48, v41
	v_div_fixup_f32 v30, v42, v37, v30
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v51, v49
	v_fma_f32 v48, -v43, v50, v46
	v_div_scale_f32 v51, s3, v17, v37, v17
	v_fma_f32 v39, -v56, v38, v39
	v_fma_f32 v42, -v52, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v48, v47
	v_mul_f32_e32 v40, v51, v49
	v_div_scale_f32 v48, null, v37, v37, v19
	v_div_fmas_f32 v38, v39, v41, v38
	v_fmac_f32_e32 v45, v42, v45
	v_fma_f32 v39, -v43, v50, v46
	v_fma_f32 v41, -v44, v40, v51
	v_rcp_f32_e32 v42, v48
	v_div_scale_f32 v46, null, v37, v37, v20
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v41, v49
	v_div_scale_f32 v43, s4, v18, v37, v18
	v_rcp_f32_e32 v41, v46
	v_div_fmas_f32 v39, v39, v47, v50
	v_div_fixup_f32 v31, v38, v37, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v48, v42, 1.0
	v_fma_f32 v38, -v44, v40, v51
	v_div_scale_f32 v51, null, v37, v37, v21
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v47, v43, v45 :: v_dual_fmac_f32 v42, v50, v42
	v_fma_f32 v50, -v46, v41, 1.0
	v_div_fmas_f32 v38, v38, v49, v40
	v_rcp_f32_e32 v40, v51
	v_div_fixup_f32 v32, v39, v37, v32
	v_fma_f32 v39, -v52, v47, v43
	v_div_scale_f32 v44, s5, v19, v37, v19
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v51, v40, 1.0
	v_fmac_f32_e32 v47, v39, v45
	v_mul_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v53, v50
	v_div_fixup_f32 v17, v38, v37, v17
	v_fmac_f32_e32 v40, v54, v40
	v_fma_f32 v38, -v52, v47, v43
	v_fma_f32 v43, -v48, v39, v44
	v_mul_f32_e32 v52, v49, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_div_scale_f32 v45, s4, v21, v37, v21
	v_fma_f32 v47, -v50, v53, 1.0
	v_div_fixup_f32 v18, v38, v37, v18
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v52, v43, v41 :: v_dual_mul_f32 v43, v45, v40
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v44, s6, v22, v37, v22
	v_div_scale_f32 v47, null, v37, v37, v23
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v48, v44, v53
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v42, v40
	v_div_fmas_f32 v39, v39, v41, v52
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v42, -v50, v48, v44
	v_div_fixup_f32 v19, v38, v37, v19
	v_fma_f32 v38, -v51, v43, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v47, v46, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v53
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v41, 1.0
	v_div_fmas_f32 v38, v38, v40, v43
	v_fma_f32 v40, -v50, v48, v44
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v43, v39, v46
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fmas_f32 v40, v40, v53, v48
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v48, -v47, v43, v39
	v_div_fixup_f32 v22, v40, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v51
	v_div_scale_f32 v44, s4, v24, v37, v24
	v_fmac_f32_e32 v43, v48, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v38, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v50, v44, v41
	v_fma_f32 v48, -v42, v45, 1.0
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v51, v40, 1.0
	v_fma_f32 v38, -v49, v50, v44
	v_div_fmas_f32 v39, v39, v46, v43
	v_div_scale_f32 v46, s3, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v52, v40
	v_fmac_f32_e32 v45, v48, v45
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v50, v38, v41
	v_div_scale_f32 v38, s5, v9, v37, v9
	v_mul_f32_e32 v54, v46, v40
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v49, v50, v44
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_rcp_f32_e32 v55, v53
	v_div_fixup_f32 v23, v39, v37, v23
	v_fma_f32 v52, -v42, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_div_fmas_f32 v41, v43, v41, v50
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v43, -v51, v54, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v49, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v24, v41, v37, v24
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	v_fma_f32 v39, -v47, v50, v49
	v_fmac_f32_e32 v54, v43, v40
	v_fma_f32 v41, -v53, v55, 1.0
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v55, v41, v55
	v_div_scale_f32 v41, s4, v12, v37, v12
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v43, v40, v54
	v_fma_f32 v43, -v47, v50, v49
	v_mul_f32_e32 v44, v41, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v47, v45
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v41
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v48, v55
	v_div_fixup_f32 v10, v40, v37, v10
	v_mul_f32_e32 v38, v46, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v53, v44, v41
	v_div_fixup_f32 v11, v43, v37, v11
	v_fma_f32 v48, -v42, v38, v46
	v_div_scale_f32 v43, null, v37, v37, v15
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, s5, v14, v37, v14
	v_div_fmas_f32 v41, v41, v55, v44
	v_fmac_f32_e32 v38, v48, v39
	v_rcp_f32_e32 v49, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v41, v37, v12
	v_fma_f32 v41, -v42, v38, v46
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v42, -v45, v44, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v41, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fma_f32 v46, -v43, v49, 1.0
	v_rcp_f32_e32 v50, v48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v41, s3, v15, v37, v15
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v40, -v45, v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v50, 1.0
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v41, v49
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s4, v16, v37, v16
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v37, v37, v3
	v_div_fmas_f32 v40, v40, v47, v44
	v_fma_f32 v44, -v43, v45, v41
	v_mul_f32_e32 v47, v38, v50
	v_div_scale_f32 v53, s5, v1, v37, v1
	v_fma_f32 v54, -v46, v52, 1.0
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_mul_f32_e32 v56, v53, v42
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
	v_div_fixup_f32 v14, v40, v37, v14
	v_fma_f32 v40, -v43, v45, v41
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v44, -v51, v55, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s3, v3, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v44, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v40, v37, v15
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v49, null, v37, v37, v8
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v51, v41, v44
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s3
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
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v38, v41 :: v_dual_fmac_f32 v51, v55, v51
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v6, v37, v6
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s5, v7, v37, v7
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v52, -v39, v54, v38
	v_div_scale_f32 v55, s6, v8, v37, v8
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
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_div_fmas_f32 v38, v38, v41, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v49, v58, v55
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s6, v26, v26
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v4, v4
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
	v_cndmask_b32_e64 v7, v17, v26, s2
	v_cndmask_b32_e64 v8, v26, v17, s2
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v15, v19, v18, s2
	v_cndmask_b32_e64 v18, v18, v19, s2
	v_cndmask_b32_e64 v19, v12, v9, s2
	v_cndmask_b32_e64 v9, v9, v12, s2
	v_cndmask_b32_e64 v12, 0x1054, v16, s2
	v_cndmask_b32_e64 v16, 0x3276, v17, s2
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b32_e64 v17, v11, v10, s2
	v_cndmask_b32_e64 v10, v10, v11, s2
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s2
	v_cndmask_b32_e64 v13, v20, v29, s2
	v_cndmask_b32_e64 v14, v29, v20, s2
	v_cndmask_b32_e64 v20, v3, v1, s2
	v_cndmask_b32_e64 v1, v1, v3, s2
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v12
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v16, v4, v2, s2
	v_cndmask_b32_e64 v2, v2, v4, s2
	v_permlanex16_b32 v4, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v28, v25, s2
	v_permlanex16_b32 v11, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v18, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v22, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s38, v34
	v_cmp_gt_i32_e64 s4, s38, v35
	v_cmp_gt_i32_e64 s1, s38, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v18
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v18
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v13, v18
	v_perm_b32 v6, v11, v13, v21
	v_perm_b32 v7, v12, v15, v18
	v_perm_b32 v8, v12, v15, v21
	v_perm_b32 v9, v14, v19, v18
	v_perm_b32 v11, v22, v17, v18
	v_perm_b32 v13, v23, v20, v18
	v_perm_b32 v15, v24, v16, v18
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v12, v22, v17, v21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s38, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s2, s0, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[48:51], 0 offen
	buffer_store_b128 v[5:8], v18, s[48:51], 0 offen
	buffer_store_b128 v[9:12], v19, s[48:51], 0 offen
	buffer_store_b128 v[13:16], v0, s[48:51], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 222
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 222
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14164
; TotalNumSgprs: 72
; NumVgprs: 222
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 222
; Occupancy: 6
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     222
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
