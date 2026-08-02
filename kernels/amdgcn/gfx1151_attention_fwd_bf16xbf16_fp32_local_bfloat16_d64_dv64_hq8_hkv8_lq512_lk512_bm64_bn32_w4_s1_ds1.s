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
	s_load_b32 s61, s[0:1], 0x5c
.Ltmp0:
	.loc	1 760 21 prologue_end           ; attention.py:760:21
	v_and_b32_e32 v66, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v69, 3, v0
	s_load_b64 s[8:9], s[0:1], 0x0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s60, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s62, s3, 9
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v65, 3, v66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v33, s60, v69
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s46, s60, s62
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v68, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s35, 0x200, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v67, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v103, 15, v0
	v_lshlrev_b32_e32 v108, 2, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v17, 0x70, v68
	v_lshrrev_b32_e32 v109, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v110, 3, v103
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s61, v69, v[65:66]
	s_mul_i32 s2, s61, s46
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s61, v65
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s61, 5
	s_mul_i32 s7, s61, 48
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v67, v17
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s35, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v1, s2, v89
	v_lshl_add_u32 v106, s61, 4, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v111, 0, v17
	v_add_lshl_u32 v4, v1, s6, 1
	v_lshlrev_b32_e32 v2, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v3, v106, s2, 1
	v_add_lshl_u32 v1, v1, s7, 1
	s_load_b64 s[6:7], s[0:1], 0x78
	v_dual_cndmask_b32 v9, 0x80000000, v4 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v5, 0x80000000, v3, vcc_lo
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v13, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	buffer_load_b128 v[13:16], v13, s[8:11], 0 offen
	s_mov_b32 s8, 0
	s_waitcnt vmcnt(3)
	ds_store_b128 v111, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v111, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[13:16] offset:6144
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s60, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s60, s6
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
	s_and_b32 s63, s9, 0x7fffffe0
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
	s_add_i32 s64, s2, s10
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s64, s64, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s63, s64
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v34, 3, v103
	v_lshlrev_b32_e32 v35, 2, v0
	v_lshrrev_b32_e32 v36, 4, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
.LBB0_3:                                ; %Flow136
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s47, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v105, 0x60, v0
	v_and_b32_e32 v104, 16, v0
	v_and_b32_e32 v107, 0x78, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s2, 0, v104
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
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v93, v8
	v_mov_b32_e32 v91, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, 16, v33
	v_or_b32_e32 v2, 32, v33
	s_clause 0x2
	s_load_b128 s[12:15], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[48:49], s[0:1], 0x30
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s5, v33
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s5, v1
	v_add_nc_u32_e32 v2, s5, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 48, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v116, s6, v4
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v117, s7, v4
	v_subrev_nc_u32_e32 v118, s6, v1
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v121, s7, v1
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v1, 7, v103
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v4, 4, v66
	v_subrev_nc_u32_e32 v119, s6, v2
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v122, s7, v2
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v2, 6, v105
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v3, s5, v3
	v_or_b32_e32 v124, v4, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v69
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v120, s6, v3
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v123, s7, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v112, 2, v66
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
	v_or_b32_e32 v113, 1, v112
	v_or_b32_e32 v114, 2, v112
	v_or_b32_e32 v115, 3, v112
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[45:48], v3
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[53:56], v6
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[61:64], v8
	ds_load_b128 v[57:60], v2
	v_lshl_add_u32 v13, s15, 4, v1
	v_lshl_add_u32 v14, s15, 5, v1
	v_mad_u64_u32 v[2:3], null, s15, 48, v[1:2]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v125, v112, v1
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v1, 6, v0
	v_xor_b32_e32 v10, 0x50, v124
	v_xor_b32_e32 v12, 0x70, v124
	v_add_nc_u32_e32 v126, v112, v13
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_add_nc_u32 v127, v113, v13
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v128, v114, v13
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v129, v115, v13
	v_add_nc_u32_e32 v130, v112, v14
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_add_nc_u32 v131, v113, v14
	v_add_nc_u32_e32 v132, v114, v14
	v_lshlrev_b32_e32 v3, 9, v0
	v_and_b32_e32 v13, 64, v1
	v_add_nc_u32_e32 v133, v115, v14
	v_and_b32_e32 v14, 0x70, v0
	v_dual_mov_b32 v179, 0xff800000 :: v_dual_add_nc_u32 v148, 0, v10
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_add_nc_u32 v150, 0, v12
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v12, v25
	v_and_or_b32 v3, 0x1c00, v3, v13
	v_lshrrev_b32_e32 v13, 1, v14
	v_lshl_or_b32 v14, v14, 6, v110
	v_and_b32_e32 v15, 0x1b8, v108
	v_lshlrev_b32_e32 v16, 5, v104
	v_add_nc_u32_e32 v134, v112, v2
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v135, v113, v2
	v_add_nc_u32_e32 v137, v114, v2
	v_add_nc_u32_e32 v138, v115, v2
	v_xor_b32_e32 v2, v14, v13
	v_and_b32_e32 v13, 0x7c, v108
	v_xor_b32_e32 v6, 16, v124
	v_or3_b32 v136, v3, v16, v15
	v_and_b32_e32 v16, 2, v109
	v_and_b32_e32 v17, 0x80, v68
	v_and_or_b32 v1, 0x700, v1, v13
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v144, 0, v6
	v_mov_b32_e32 v6, v25
	v_lshrrev_b32_e32 v19, 1, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v139, v1, v17, v16
	v_xor_b32_e32 v17, 48, v136
	v_mov_b32_e32 v1, 0x5410
	v_mov_b32_e32 v16, 0x7632
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 2, v107
	v_xor_b32_e32 v8, 48, v124
	v_add_nc_u32_e32 v157, 0, v17
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v4, v105, 3, v4
	v_cndmask_b32_e64 v1, 0x1054, v1, s2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s47, v5, v[65:66]
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v140, v4, v19
	v_cndmask_b32_e64 v4, 0x3276, v16, s2
	v_lshl_or_b32 v1, v1, 8, v1
	v_xor_b32_e32 v7, 32, v124
	v_and_b32_e32 v16, 48, v67
	v_bfe_i32 v0, v0, 3, 1
	v_lshl_or_b32 v4, v4, 8, v4
	v_dual_mov_b32 v94, v25 :: v_dual_and_b32 v1, 0x540054, v1
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_add_nc_u32 v146, 0, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v91, v25 :: v_dual_and_b32 v4, 0x760076, v4
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v5, 48, v5
	v_mov_b32_e32 v92, v25
	v_xor_b32_e32 v3, 8, v136
	v_and_b32_e32 v21, 0x210, v0
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v5, v66, 6, v5
	v_lshl_or_b32 v4, v4, 4, v4
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_add_nc_u32 v145, 0, v7
	v_mov_b32_e32 v7, v25
	v_xor_b32_e32 v16, v16, v19
	v_xor_b32_e32 v141, v5, v21
	v_xor_b32_e32 v5, 32, v139
	v_dual_mov_b32 v93, v25 :: v_dual_and_b32 v142, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v0, v66, 9, v16
	v_and_b32_e32 v143, 0x7060706, v4
	v_add_nc_u32_e32 v151, 0, v2
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v152, 0, v3
	v_xor_b32_e32 v1, 48, v139
	v_xor_b32_e32 v2, 64, v139
	v_xor_b32_e32 v3, 0x50, v139
	v_xor_b32_e32 v4, 0x60, v139
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_add_nc_u32_e32 v161, 0, v5
	v_xor_b32_e32 v5, 0x70, v139
	v_add_nc_u32_e32 v162, 0, v1
	v_add_nc_u32_e32 v163, 0, v2
	v_add_nc_u32_e32 v164, 0, v3
	v_add_nc_u32_e32 v165, 0, v4
	v_xor_b32_e32 v1, 0x90, v0
	v_xor_b32_e32 v2, 0x120, v0
	v_xor_b32_e32 v3, 0x1b0, v0
	v_xor_b32_e32 v4, 16, v141
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v9, 64, v124
	s_add_i32 s0, s3, s0
	v_xor_b32_e32 v11, 0x60, v124
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_xor_b32_e32 v14, 16, v136
	v_xor_b32_e32 v15, 24, v136
	v_xor_b32_e32 v13, 32, v136
	v_xor_b32_e32 v18, 40, v136
	v_xor_b32_e32 v20, 56, v136
	v_xor_b32_e32 v19, 0x440, v140
	v_xor_b32_e32 v16, 16, v139
	v_add_nc_u32_e32 v166, 0, v5
	v_xor_b32_e32 v5, 32, v141
	v_add_nc_u32_e32 v167, 0, v1
	v_add_nc_u32_e32 v168, 0, v2
	v_add_nc_u32_e32 v169, 0, v3
	v_add_nc_u32_e32 v170, 0, v4
	v_xor_b32_e32 v1, 48, v141
	v_xor_b32_e32 v2, 0x420, v141
	v_xor_b32_e32 v3, 0x430, v141
	v_xor_b32_e32 v4, 0x410, v141
	s_sub_i32 s1, s3, s1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s14, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s13, s0
	v_add_nc_u32_e32 v147, 0, v9
	v_add_nc_u32_e32 v149, 0, v11
	v_add_nc_u32_e32 v153, 0, v14
	v_add_nc_u32_e32 v154, 0, v15
	v_add_nc_u32_e32 v155, 0, v13
	v_add_nc_u32_e32 v156, 0, v18
	v_add_nc_u32_e32 v158, 0, v20
	v_add_nc_u32_e32 v159, 0, v19
	v_add_nc_u32_e32 v160, 0, v16
	v_add_nc_u32_e32 v171, 0, v5
	v_add_nc_u32_e32 v172, 0, v1
	v_add_nc_u32_e32 v173, 0, v2
	v_add_nc_u32_e32 v174, 0, v3
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v175, 0, v4
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v176, 1, v125
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v177, 2, v125
	v_add_nc_u32_e32 v178, 3, v125
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s65, s12, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s15, s60
	s_add_i32 s66, s1, s0
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s36, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_add_i32 s66, s66, s3
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s11, 0xffff
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
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
	s_mov_b32 s56, s10
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s47, v65
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s68, s63, s62
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v88, s43 :: v_dual_add_nc_u32 v73, 0, v124
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s68, s61
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v87, s42 :: v_dual_mov_b32 v86, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s0, v89, 1
	v_add_lshl_u32 v66, s0, v106, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v85, s40 :: v_dual_mov_b32 v84, s39
	v_dual_mov_b32 v83, s38 :: v_dual_mov_b32 v82, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v69, 0x80000000, v66, s4
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[52:55], 0 offen
	buffer_load_b128 v[69:72], v69, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v81, s36
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v188, s63, v112
	v_or_b32_e32 v189, s63, v113
	v_or_b32_e32 v190, s63, v114
	v_or_b32_e32 v191, s63, v115
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s69, s66, s63
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v188, v116
	v_cmp_ge_i32_e64 s1, v188, v118
	v_cmp_ge_i32_e64 s3, v188, v119
	v_cmp_ge_i32_e64 s9, v188, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v188, v117
	v_cmp_le_i32_e64 s6, v188, v121
	v_cmp_le_i32_e64 s7, v188, v122
	v_cmp_le_i32_e64 s14, v188, v123
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v188, 0, v136
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v189, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v189, v117
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v190, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v190, v117
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v191, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v191, v117
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v192, s69, v125, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v189, v118
	v_cmp_ge_i32_e64 s11, v189, v119
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v189, v121
	v_cmp_le_i32_e64 s16, v189, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v190, v118
	v_cmp_ge_i32_e64 s19, v190, v119
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v190, v121
	v_cmp_le_i32_e64 s24, v190, v122
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v191, v118
	v_cmp_ge_i32_e64 s28, v191, v119
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v191, v121
	v_cmp_le_i32_e64 s33, v191, v122
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_add_lshl_u32 v193, s69, v176, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s8, s12
	s_and_b32 s8, s17, s22
	s_and_b32 s17, s1, s6
	s_and_b32 s6, s35, s0
	s_and_b32 s12, s26, s30
	s_and_b32 s3, s3, s7
	s_and_b32 s7, s35, s8
	s_and_b32 s10, s10, s13
	s_and_b32 s13, s18, s23
	s_and_b32 s18, s27, s31
	s_and_b32 s16, s11, s16
	s_and_b32 s19, s19, s24
	s_and_b32 s22, s28, s33
	s_and_b32 s0, s35, s5
	s_and_b32 s1, s35, s12
	s_and_b32 s8, s35, s17
	s_and_b32 s12, s35, s10
	s_and_b32 s11, s35, s13
	s_and_b32 s13, s35, s18
	s_and_b32 s10, s35, s3
	s_and_b32 s5, s35, s16
	s_and_b32 s16, s35, s19
	s_and_b32 s18, s35, s22
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v190, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v190, v123
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s9, s14
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v189, v120
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s35, s3
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v189, v123
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s21, s25
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v191, v120
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s35, s9
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v191, v123
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s15, s20
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s63, s63, 32
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s35, s3
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s29, s34
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v144
	ds_load_b128 v[65:68], v73
	ds_load_b128 v[95:98], v73 offset:2048
	ds_load_b128 v[99:102], v144 offset:2048
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s35, s9
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[57:64], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[95:102], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v146
	ds_load_b128 v[81:84], v145
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v95, s69, v132, 2
	v_add_lshl_u32 v96, s69, v133, 2
	v_cndmask_b32_e64 v97, 0x80000000, v192, s6
	v_cndmask_b32_e64 v98, 0x80000000, v193, s0
	v_add_lshl_u32 v99, s69, v134, 2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s16
	v_cndmask_b32_e64 v96, 0x80000000, v96, s18
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v145 offset:2048
	ds_load_b128 v[85:88], v146 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v148
	ds_load_b128 v[81:84], v147
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v147 offset:2048
	ds_load_b128 v[85:88], v148 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v150
	ds_load_b128 v[81:84], v149
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[33:40], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v149 offset:2048
	ds_load_b128 v[85:88], v150 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[33:40], v[65:72]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v81, s69, v177, 2
	v_add_lshl_u32 v82, s69, v178, 2
	v_add_lshl_u32 v83, s69, v126, 2
	v_add_lshl_u32 v84, s69, v127, 2
	v_add_lshl_u32 v85, s69, v128, 2
	v_add_lshl_u32 v86, s69, v129, 2
	v_add_lshl_u32 v87, s69, v130, 2
	v_add_lshl_u32 v88, s69, v131, 2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s7
	v_cndmask_b32_e64 v82, 0x80000000, v82, s1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s8
	v_cndmask_b32_e64 v84, 0x80000000, v84, s12
	v_cndmask_b32_e64 v85, 0x80000000, v85, s11
	v_cndmask_b32_e64 v86, 0x80000000, v86, s13
	v_cndmask_b32_e64 v87, 0x80000000, v87, s10
	v_cndmask_b32_e64 v88, 0x80000000, v88, s5
	s_clause 0xb
	buffer_load_b32 v97, v97, s[48:51], 0 offen
	buffer_load_b32 v81, v81, s[48:51], 0 offen
	buffer_load_b32 v98, v98, s[48:51], 0 offen
	buffer_load_b32 v82, v82, s[48:51], 0 offen
	buffer_load_b32 v83, v83, s[48:51], 0 offen
	buffer_load_b32 v85, v85, s[48:51], 0 offen
	buffer_load_b32 v84, v84, s[48:51], 0 offen
	buffer_load_b32 v86, v86, s[48:51], 0 offen
	buffer_load_b32 v87, v87, s[48:51], 0 offen
	buffer_load_b32 v95, v95, s[48:51], 0 offen
	buffer_load_b32 v88, v88, s[48:51], 0 offen
	buffer_load_b32 v96, v96, s[48:51], 0 offen
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v193, 0xff800000, v97, s6
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v194, 0xff800000, v81, s7
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v81, 0xff800000, v98, s0
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v82, 0xff800000, v82, s1
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v195, 0xff800000, v83, s8
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v196, 0xff800000, v85, s11
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v83, 0xff800000, v84, s12
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v84, 0xff800000, v86, s13
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v97, 0xff800000, v87, s10
	v_add_lshl_u32 v87, s69, v137, 2
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v85, 0xff800000, v88, s5
	v_cndmask_b32_e64 v88, 0x80000000, v99, s17
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v86, 0xff800000, v96, s18
	v_cndmask_b32_e64 v98, 0xff800000, v95, s16
	v_cndmask_b32_e64 v87, 0x80000000, v87, s19
	s_clause 0x1
	buffer_load_b32 v88, v88, s[48:51], 0 offen
	buffer_load_b32 v87, v87, s[48:51], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v193
	v_cmp_neq_f32_e64 s20, 0xff800000, v194
	v_cmp_neq_f32_e64 s26, 0xff800000, v81
	v_cmp_neq_f32_e64 s9, 0xff800000, v195
	v_cmp_neq_f32_e64 s15, 0xff800000, v196
	v_cmp_neq_f32_e64 s21, 0xff800000, v97
	v_cmp_neq_f32_e64 s27, 0xff800000, v82
	v_cmp_neq_f32_e64 s24, 0xff800000, v98
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, s8, s9
	s_and_b32 s8, s11, s15
	s_and_b32 s15, s6, s14
	s_and_b32 s14, s7, s20
	s_and_b32 s11, s10, s21
	s_and_b32 s10, s16, s24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v84
	v_cmp_neq_f32_e64 s30, 0xff800000, v85
	v_cmp_neq_f32_e64 s28, 0xff800000, v83
	v_cmp_neq_f32_e64 s31, 0xff800000, v86
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s0, s26
	s_and_b32 s16, s13, s29
	s_and_b32 s20, s1, s27
	s_and_b32 s18, s18, s31
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v95, 0xff800000, v88, s17
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v96, 0xff800000, v87, s19
	v_add_lshl_u32 v87, s69, v135, 2
	v_add_lshl_u32 v88, s69, v138, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s25, 0xff800000, v96
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v87, 0x80000000, v87, s22
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v88, 0x80000000, v88, s23
	s_clause 0x1
	buffer_load_b32 v87, v87, s[48:51], 0 offen
	buffer_load_b32 v88, v88, s[48:51], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s19, s25
	s_and_b32 s7, s17, s3
	s_and_b32 s17, s12, s28
	s_and_b32 s19, s5, s30
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v87, 0xff800000, v87, s22
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v88, 0xff800000, v88, s23
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v151, v[193:194], v[195:196] offset1:16
	ds_store_2addr_b64 v151, v[81:82], v[83:84] offset0:64 offset1:80
	ds_store_2addr_b64 v151, v[97:98], v[95:96] offset0:32 offset1:48
	ds_store_2addr_b64 v151, v[85:86], v[87:88] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[99:100], v188
	ds_load_b64 v[101:102], v152
	ds_load_b64 v[189:190], v153
	ds_load_b64 v[197:198], v154
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v82, 0, 1, s8
	v_cndmask_b32_e64 v83, 0, 1, s16
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v88
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v84, 0, 1, s17
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v87
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v196, 0, v0
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s23, s34
	s_and_b32 s13, s22, s33
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s63, s64
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v99, 0x3fb8aa3b, v99 :: v_dual_mul_f32 v100, 0x3fb8aa3b, v100
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v101, 0x3fb8aa3b, v101 :: v_dual_mul_f32 v102, 0x3fb8aa3b, v102
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v191, 0x3fb8aa3b, v189
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v99, s65, v73 :: v_dual_fmac_f32 v100, s65, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v101, s65, v75 :: v_dual_fmac_f32 v102, s65, v76
	v_mad_u64_u32 v[74:75], null, s68, s47, v[90:91]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v189, 0x3fb8aa3b, v190 :: v_dual_mul_f32 v192, 0x3fb8aa3b, v197
	v_dual_mul_f32 v190, 0x3fb8aa3b, v198 :: v_dual_fmac_f32 v191, s65, v77
	ds_load_b64 v[76:77], v156
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v189, s65, v78
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v75, 1, v74
	v_add_lshl_u32 v74, v74, s47, 1
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v192, s65, v79 :: v_dual_add_nc_u32 v73, 0, v140
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[78:79], v157
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_dual_cndmask_b32 v193, 0x80000000, v75 :: v_dual_cndmask_b32 v194, 0x80000000, v74
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[74:75], v155
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v190, s65, v80
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[80:81], v158
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_add_nc_u32_e32 v97, 0, v139
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v76, s65, v67
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v78
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s14
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v74, 0x3fb8aa3b, v74 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v75
	v_mul_f32_e32 v79, 0x3fb8aa3b, v79
	v_dual_mul_f32 v81, 0x3fb8aa3b, v81 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v74, s65, v65
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v65.l, v82.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, s65, v66 :: v_dual_fmac_f32 v78, s65, v69
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, s65, v68 :: v_dual_fmac_f32 v80, s65, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v68, 0, 1, s15
	v_cndmask_b32_e64 v69, 0, 1, s6
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v79, s65, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v70, 0, 1, s7
	v_or_b16 v82.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v67.l
	v_mov_b16_e32 v66.l, v68.l
	v_cndmask_b32_e64 v71, 0, 1, s10
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v81, s65, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v72, 0, 1, s11
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s20
	v_cndmask_b32_e64 v68, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v82.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v69.l
	v_mov_b16_e32 v66.l, v70.l
	v_cndmask_b32_e64 v69, 0, 1, s12
	v_cndmask_b32_e64 v70, 0, 1, s13
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v85.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v71.l
	v_mov_b16_e32 v66.l, v72.l
	v_cndmask_b32_e64 v71, 0, 1, s18
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v85.l, v66.l, v65.l
	v_mov_b16_e32 v65.l, v83.l
	v_mov_b16_e32 v66.l, v84.l
	v_cndmask_b32_e64 v83, 0, 1, s19
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v72.h, v66.l, v65.l
	v_mov_b16_e32 v65.l, v67.l
	v_mov_b16_e32 v66.l, v68.l
	v_mov_b16_e32 v67.l, v69.l
	v_mov_b16_e32 v68.l, v71.l
	v_mov_b16_e32 v69.l, v70.l
	v_mov_b16_e32 v70.l, v83.l
	v_lshlrev_b16 v65.l, 8, v65.l
	v_lshlrev_b16 v65.h, 8, v67.l
	v_lshlrev_b16 v66.h, 8, v68.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v72.l, v66.l, v65.l
	v_or_b16 v65.h, v69.l, v65.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v65.l, v70.l, v66.h
	ds_store_2addr_b32 v73, v82, v85 offset1:32
	ds_store_2addr_b32 v159, v72, v65 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v65, v97
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v160
	ds_load_u16_d16 v66, v161
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v162
	ds_load_u16_d16 v67, v163
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v164
	ds_load_u16_d16 v68, v165
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v166
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v69.l, 1, v65.l
	v_and_b16 v69.h, 1, v65.h
	v_and_b16 v70.l, 1, v66.l
	v_lshrrev_b16 v65.l, 8, v65.l
	v_lshrrev_b16 v65.h, 8, v65.h
	v_cmp_eq_u16_e64 s34, 1, v69.l
	v_and_b16 v69.l, 1, v66.h
	v_cmp_eq_u16_e64 s33, 1, v69.h
	v_and_b16 v69.h, 1, v67.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_lshrrev_b16 v66.h, 8, v66.h
	v_lshrrev_b16 v67.l, 8, v67.l
	v_cmp_eq_u16_e64 s30, 1, v70.l
	v_and_b16 v70.l, 1, v67.h
	v_cmp_eq_u16_e64 s28, 1, v69.l
	v_and_b16 v69.l, 1, v68.l
	v_cmp_eq_u16_e64 s25, 1, v69.h
	v_and_b16 v69.h, 1, v68.h
	v_lshrrev_b16 v67.h, 8, v67.h
	v_lshrrev_b16 v68.l, 8, v68.l
	v_lshrrev_b16 v68.h, 8, v68.h
	v_and_b16 v65.l, 1, v65.l
	v_and_b16 v65.h, 1, v65.h
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v67.l, 1, v67.l
	v_and_b16 v67.h, 1, v67.h
	v_and_b16 v68.l, 1, v68.l
	v_and_b16 v68.h, 1, v68.h
	v_cmp_eq_u16_e64 s3, 1, v65.l
	v_cmp_eq_u16_e64 s31, 1, v65.h
	v_cmp_eq_u16_e64 s29, 1, v66.l
	v_cmp_eq_u16_e64 s27, 1, v66.h
	v_cmp_eq_u16_e64 s26, 1, v67.l
	v_cmp_eq_u16_e64 s23, 1, v70.l
	v_cmp_eq_u16_e64 s5, 1, v69.l
	v_cmp_eq_u16_e64 s0, 1, v69.h
	v_cmp_eq_u16_e64 s24, 1, v67.h
	v_cmp_eq_u16_e64 s22, 1, v68.l
	v_cmp_eq_u16_e64 s1, 1, v68.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v99, s34
	v_cndmask_b32_e64 v66, 0xff800000, v100, s3
	v_cndmask_b32_e64 v67, 0xff800000, v101, s33
	v_cndmask_b32_e64 v68, 0xff800000, v102, s31
	v_cndmask_b32_e64 v69, 0xff800000, v191, s30
	v_cndmask_b32_e64 v70, 0xff800000, v189, s29
	v_cndmask_b32_e64 v71, 0xff800000, v192, s28
	v_cndmask_b32_e64 v72, 0xff800000, v190, s27
	v_cndmask_b32_e64 v101, 0xff800000, v74, s25
	v_cndmask_b32_e64 v102, 0xff800000, v75, s26
	v_cndmask_b32_e64 v99, 0xff800000, v76, s23
	v_cndmask_b32_e64 v97, 0xff800000, v78, s5
	v_cndmask_b32_e64 v95, 0xff800000, v80, s0
	v_cndmask_b32_e64 v100, 0xff800000, v77, s24
	v_cndmask_b32_e64 v98, 0xff800000, v79, s22
	v_cndmask_b32_e64 v96, 0xff800000, v81, s1
	ds_store_b64 v188, v[65:66]
	ds_store_b64 v152, v[67:68]
	ds_store_b64 v153, v[69:70]
	ds_store_b64 v154, v[71:72]
	ds_store_b64 v155, v[101:102]
	ds_store_b64 v156, v[99:100]
	ds_store_b64 v157, v[97:98]
	ds_store_b64 v158, v[95:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[73:76], v193, s[56:59], 0 offen
	buffer_load_b128 v[188:191], v194, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v192.l, v73.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v192.h, v188.l
	v_mov_b16_e64 v188.l, v73.h
	v_mov_b16_e64 v193.l, v74.l
	v_mov_b16_e64 v193.h, v189.l
	v_mov_b16_e64 v189.l, v74.h
	v_mov_b16_e64 v194.l, v75.l
	v_mov_b16_e64 v194.h, v190.l
	v_mov_b16_e64 v190.l, v75.h
	v_mov_b16_e64 v195.l, v76.l
	v_mov_b16_e64 v195.h, v191.l
	v_mov_b16_e64 v191.l, v76.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[85:88], v151 offset1:16
	ds_load_2addr_b64 v[81:84], v151 offset0:64 offset1:80
	ds_load_2addr_b64 v[77:80], v151 offset0:32 offset1:48
	ds_load_2addr_b64 v[73:76], v151 offset0:96 offset1:112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v196, v192, v188 offset1:16
	ds_store_2addr_b32 v167, v193, v189 offset1:16
	ds_store_2addr_b32 v168, v194, v190 offset1:16
	ds_store_2addr_b32 v169, v195, v191 offset1:16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v188, v65, v66
	v_max3_f32 v189, v68, v69, v70
	v_max3_f32 v190, v97, v98, v95
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v188, v188, v67, v189
	v_max3_f32 v189, v102, v99, v100
	v_max3_f32 v189, v189, v190, v96
	v_max3_f32 v190, v71, v72, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v188, v188, v190, v189
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v189, v188, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v188, v187, v188, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v189.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v188
	v_sub_f32_e32 v67, v67, v188
	v_sub_f32_e32 v68, v68, v188
	v_sub_f32_e32 v69, v69, v188
	v_sub_f32_e32 v70, v70, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v188
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s3
	v_cndmask_b32_e64 v67, 0, v67, s33
	v_cndmask_b32_e64 v68, 0, v68, s31
	v_cndmask_b32_e64 v69, 0, v69, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v189.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s31, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v190, 1, v189
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v189.l, v68.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v70, v70
	v_add3_u32 v66, v66, v190, 0x7fff
	v_mov_b16_e64 v190.h, v189.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s27, v72, v72
	v_mov_b16_e64 v190.l, v65.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v65, v65
	v_and_b32_e32 v190, 1, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v190, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v190, v66, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v190, v66, v142
	v_perm_b32 v66, v190, v66, v143
	v_mov_b16_e64 v190.h, v189.h
	v_mov_b16_e64 v190.l, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v190, 1, v190
	v_add3_u32 v67, v67, v190, 0x7fff
	v_and_b32_e32 v190, 1, v189
	v_mov_b16_e64 v189.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v68, v190, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s3, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s31
	v_permlanex16_b32 v190, v68, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v190, v68, v142
	v_perm_b32 v68, v190, v68, v143
	v_mov_b16_e64 v190.h, v189.h
	v_mov_b16_e64 v190.l, v69.h
	v_and_b32_e32 v190, 1, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v190, 0x7fff
	v_and_b32_e32 v190, 1, v189
	v_mov_b16_e64 v189.l, v72.h
	v_add3_u32 v70, v70, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v71, v71
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v190, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v190, v70, v142
	v_perm_b32 v70, v190, v70, v143
	v_mov_b16_e64 v190.h, v189.h
	v_mov_b16_e64 v190.l, v71.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v190, 1, v190
	v_add3_u32 v71, v71, v190, 0x7fff
	v_and_b32_e32 v190, 1, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v190, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v187
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v187, v187, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s27
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v187, v187
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v198, 0, v187, s3
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v198 :: v_dual_add_nc_u32 v187, 0, v141
	v_mul_f32_e32 v17, v17, v198
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v190, v72, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v198
	v_mul_f32_e32 v27, v27, v198
	v_mul_f32_e32 v28, v28, v198
	v_mul_f32_e32 v29, v29, v198
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v190, v72, v142
	v_perm_b32 v72, v190, v72, v143
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[190:193], v187
	ds_load_b128 v[194:197], v170
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v198
	v_mul_f32_e32 v31, v31, v198
	v_mul_f32_e32 v32, v32, v198
	v_mul_f32_e32 v18, v18, v198
	v_mul_f32_e32 v19, v19, v198
	v_mul_f32_e32 v20, v20, v198
	v_mul_f32_e32 v21, v21, v198
	v_mul_f32_e32 v22, v22, v198
	v_mul_f32_e32 v23, v23, v198
	v_mul_f32_e32 v24, v24, v198
	v_mul_f32_e32 v9, v9, v198
	v_mul_f32_e32 v10, v10, v198
	v_mul_f32_e32 v11, v11, v198
	v_mul_f32_e32 v12, v12, v198
	v_mul_f32_e32 v13, v13, v198
	v_mul_f32_e32 v14, v14, v198
	v_mul_f32_e32 v15, v15, v198
	v_mul_f32_e32 v16, v16, v198
	v_mul_f32_e32 v1, v1, v198
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[190:197], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[194:197], v174
	ds_load_b128 v[190:193], v173
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v198
	v_mul_f32_e32 v3, v3, v198
	v_mul_f32_e32 v4, v4, v198
	v_mul_f32_e32 v5, v5, v198
	v_mul_f32_e32 v6, v6, v198
	v_mul_f32_e32 v7, v7, v198
	v_mul_f32_e32 v8, v8, v198
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[190:197], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[194:197], v170 offset:2048
	ds_load_b128 v[190:193], v187 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[190:197], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[190:193], v173 offset:2048
	ds_load_b128 v[194:197], v174 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[190:197], v[65:72], v[1:8]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v81, v81
	v_dual_max_f32 v68, v85, v85 :: v_dual_max_f32 v69, v83, v83
	v_dual_max_f32 v70, v87, v87 :: v_dual_max_f32 v65, v181, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v66, v182, v182 :: v_dual_max_f32 v67, v68, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.h, v189.h
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v70, v69
.Ltmp9:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v96, v188
	v_mov_b32_e32 v96, v92
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v67, v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v68, v68, v88, v84
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v67 :: v_dual_mov_b32 v70, v68
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v70, v70, v70
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v67, v69 :: v_dual_max_f32 v68, v68, v70
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v67 :: v_dual_mov_b32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v70, v70, v70
	v_dual_max_f32 v67, v67, v69 :: v_dual_max_f32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v67 :: v_dual_mov_b32 v70, v68
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v190, v67, v69
	v_max_f32_e32 v67, v79, v79
	v_max_f32_e32 v191, v68, v70
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v100, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.h, v189.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v181, v65, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v73, v73 :: v_dual_max_f32 v182, v66, v191
	v_max_f32_e32 v66, v77, v77
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v98, v188
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v66, v65 :: v_dual_max_f32 v66, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v78, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v66, v67, v66
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v65
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v66, v80, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s22
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v67, v66 :: v_dual_sub_f32 v88, v88, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v86, v181
	v_sub_f32_e32 v82, v82, v181
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v85, v181
.Ltmp36:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v182
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v82, v82
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v181
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v85, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
.Ltmp40:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v67
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v67, v66
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s14
	v_cndmask_b32_e64 v82, 0, v82, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v86, v82
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s15
	v_cndmask_b32_e64 v81, 0, v81, s21
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp48:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v87, v87, v182 :: v_dual_add_f32 v84, v88, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
.Ltmp50:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp53:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v182
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s9
.Ltmp54:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v192, v65, v67 :: v_dual_mov_b32 v65, v66
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v189.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp58:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v193, v66, v65
.Ltmp60:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v65, v179, v179 :: v_dual_max_f32 v66, v180, v180
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v87, v83
	v_add_f32_e32 v81, v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v180, v66, v193
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v102, v188
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v179, v65, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v101, v188
	v_sub_f32_e32 v80, v80, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v179
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v179
	v_sub_f32_e32 v76, v76, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v78, v78
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v179
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v76, v76
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s26
	v_cndmask_b32_e64 v65, 0, v65, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v189.l, v66.h
	v_cmp_o_f32_e64 s25, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s10
	v_cndmask_b32_e64 v74, 0, v74, s18
	v_cndmask_b32_e64 v80, 0, v80, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s12
	v_cndmask_b32_e64 v77, 0, v77, s11
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v78, v74
	v_add_f32_e32 v78, v83, v84
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v67, 0x7fff
	v_and_b32_e32 v67, 1, v189
	v_mov_b16_e64 v189.l, v68.h
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v66, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v66, v142
	v_perm_b32 v66, v67, v66, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v69.l, v67.h
	v_cmp_o_f32_e64 s3, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v67, v67, v69, 0x7fff
	v_and_b32_e32 v69, 1, v189
	v_mov_b16_e64 v189.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s23
	v_permlanex16_b32 v69, v68, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v69, v68, v142
	v_perm_b32 v68, v69, v68, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v97, v188
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v70, v70
	v_mov_b16_e32 v71.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v69, v69
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v71, 0x7fff
	v_and_b32_e32 v71, 1, v189
	v_mov_b16_e64 v189.l, v72.h
	v_add3_u32 v70, v70, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s5
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v71, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v142
	v_perm_b32 v70, v71, v70, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v95, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v95.h, v189.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v95.l, v71.h
	v_cmp_o_f32_e64 s0, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v95, 1, v95
	v_add3_u32 v71, v71, v95, 0x7fff
	v_and_b32_e32 v95, 1, v189
	v_mov_b32_e32 v189, v91
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v91, v183, v183
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v72, v95, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s0
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v98, v91, v190 :: v_dual_max_f32 v91, v184, v184
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v184
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v185
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v91, v191
	v_max_f32_e32 v91, v185, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v79, v79, v180 :: v_dual_sub_f32 v102, v184, v99
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v100, v91, v192 :: v_dual_max_f32 v91, v186, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v102, v102
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v101, v91, v193
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v77, v73
	v_add_f32_e32 v77, v81, v82
.Ltmp68:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v91, v183, v98 :: v_dual_sub_f32 v184, v186, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s7
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp70:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v91, v91
	.loc	1 885 74 is_stmt 0              ; attention.py:885:74
	v_sub_f32_e32 v183, v185, v100
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v190, v184
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v185, 0, v91, s3
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v79, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v79, v73 :: v_dual_add_f32 v74, v75, v76
	v_dual_mov_b32 v75, v77 :: v_dual_mov_b32 v76, v78
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v80, v74
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v76, v76 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v75, v77, v75 :: v_dual_add_f32 v76, v78, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v79, v73 :: v_dual_add_f32 v74, v74, v80
	v_mov_b32_e32 v97, v93
	v_dual_mov_b32 v77, v75 :: v_dual_mov_b32 v78, v76
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v95, v72, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v80, v74
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v95, v72, v142
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v72, v95, v72, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v95, v94 :: v_dual_add_f32 v76, v76, v78
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v77
	v_dual_add_f32 v73, v73, v79 :: v_dual_add_f32 v74, v74, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v78, v76 :: v_dual_mov_b32 v77, v75
	v_dual_mov_b32 v79, v73 :: v_dual_mov_b32 v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v76, v78
	v_dual_add_f32 v91, v75, v77 :: v_dual_add_f32 v92, v73, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v94, v74, v80
.Ltmp85:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v172
	ds_load_b128 v[73:76], v171
	v_dual_mov_b32 v184, v99 :: v_dual_fmac_f32 v91, v189, v185
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v189, v183
	v_mov_b32_e32 v183, v98
	v_mov_b32_e32 v185, v100
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v98, 0, v102, s0
	v_cndmask_b32_e64 v100, 0, v190, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v93, v97, v98 :: v_dual_fmac_f32 v94, v95, v100
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v99, 0, v189, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v92, v96, v99
	v_mov_b32_e32 v186, v101
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v187 offset:1024
	ds_load_b128 v[81:84], v175
	ds_load_b128 v[73:76], v187 offset:3072
	v_mov_b32_e32 v187, v188
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[77:84], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v171 offset:2048
	ds_load_b128 v[85:88], v172 offset:2048
	ds_load_b128 v[77:80], v175 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v34, v110 :: v_dual_mov_b32 v35, v108
	v_mov_b32_e32 v36, v109
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_and_b32_e32 v0, 0x80, v35
	v_and_b32_e32 v33, 4, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v34, v0, v33
	ds_store_2addr_b64 v35, v[91:92], v[93:94] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 1, v104
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v105
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v0, v103
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s60, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s46, v36
	s_mov_b32 s46, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s47, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v44, null, v37, v37, v28
	v_div_scale_f32 v38, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v51, null, v37, v37, v30
	v_rcp_f32_e32 v52, v44
	v_div_scale_f32 v42, null, v37, v37, v27
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v48, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v42
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v45, s4, v28, v37, v28
	v_rcp_f32_e32 v54, v48
	v_fma_f32 v57, -v44, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v55, v47
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v53, -v38, v46, 1.0
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v53, -v42, v50, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v48, v54, 1.0
	v_div_scale_f32 v43, s3, v27, v37, v27
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
	v_cmp_gt_i32_e32 vcc_lo, s47, v34
	v_cmp_gt_i32_e64 s4, s47, v35
	v_cmp_gt_i32_e64 s1, s47, v33
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
	v_cmp_gt_i32_e64 s3, s47, v0
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
	s_mov_b32 s47, 0x31027000
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[44:47], 0 offen
	buffer_store_b128 v[5:8], v18, s[44:47], 0 offen
	buffer_store_b128 v[9:12], v19, s[44:47], 0 offen
	buffer_store_b128 v[13:16], v0, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp86:
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
		.amdhsa_next_free_vgpr 199
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
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 199
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
; codeLenInByte = 13440
; TotalNumSgprs: 72
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 199
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
    .vgpr_count:     199
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
