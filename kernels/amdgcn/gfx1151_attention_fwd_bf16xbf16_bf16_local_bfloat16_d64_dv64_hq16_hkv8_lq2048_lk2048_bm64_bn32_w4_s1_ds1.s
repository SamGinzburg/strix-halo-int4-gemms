	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s51, s[0:1], 0x5c
.Ltmp0:
	.loc	1 598 79 prologue_end           ; attention.py:598:79
	v_and_b32_e32 v33, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v66, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s50, s2, 6
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v65, 3, v33
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s50, v66
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s38, s50, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v109, 15, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v67, 1, v0
	v_lshlrev_b32_e32 v115, 4, v0
	v_lshlrev_b32_e32 v114, 2, v0
	v_lshlrev_b32_e32 v116, 3, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v17, 0x70, v67
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s51, v66, v[65:66]
	s_mul_i32 s2, s51, s38
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s36, s51, v65
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s8, s51, 5
	s_mul_i32 s9, s51, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	v_xor_b32_e32 v17, v115, v17
	.loc	1 598 26                        ; attention.py:598:26
	v_add_nc_u32_e32 v1, s2, v105
	v_lshl_add_u32 v112, s51, 4, v105
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v117, 0, v17
	v_add_lshl_u32 v4, v1, s8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v3, v112, s2, 1
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s9, 1
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s50, s13
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v9, 0x80000000, v4, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v3 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v1, vcc_lo
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s14
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s5, s50, s12
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s2, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s5, s5, s14
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s5, s5, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s6, s2, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s64, s5, 0x7fffffe0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s6, s6, 27
	s_mov_b32 s4, 0
	s_add_i32 s65, s2, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v117, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v117, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v117, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v117, v[13:16] offset:6144
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s65, s65, 31
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s64, s65
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v34, 3, v109
	v_lshlrev_b32_e32 v35, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow222
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v111, 0x60, v0
	v_and_b32_e32 v110, 16, v0
	v_and_b32_e32 v113, 0x7c, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s2, 0, v110
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
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v107, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 2, v113
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s8, s4, 28
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v2, 3, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s15, s3, s8
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[52:53], s[0:1], 0x30
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s15, -16
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v3, s50, v1
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s8
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v118, 3, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s3, 0x10007
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 32, v3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v25, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v5, s14, v3
	v_add_nc_u32_e32 v4, s14, v4
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v3, 7, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v6, 6, v111
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v7, 4, v33
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v12, 12, v0
	v_lshlrev_b32_e32 v13, 5, v0
	v_lshlrev_b32_e32 v14, 2, v111
	v_mov_b32_e32 v26, v25
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v126, s12, v5
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v128, s13, v5
	v_mov_b32_e32 v28, v25
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v5, v3, v6, v7
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v127, s12, v4
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v129, s13, v4
	v_lshlrev_b32_e32 v16, 8, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v4, 0x70, v5, 0
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v13, 0x260, v13
	v_lshl_or_b32 v17, v12, 1, v14
	v_xad_u32 v6, 0x60, v5, 0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s11, v1
	ds_load_b128 v[37:40], v4
	ds_load_b128 v[33:36], v6
	v_xad_u32 v4, 0x50, v5, 0
	v_or3_b32 v140, v16, v13, v17
	v_xad_u32 v6, v5, 64, 0
	v_xad_u32 v8, v5, 48, 0
	v_xad_u32 v9, v5, 32, 0
	v_xad_u32 v10, v5, 16, 0
	v_add_nc_u32_e32 v5, 0, v5
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v8
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[61:64], v10
	ds_load_b128 v[57:60], v5
	v_lshl_add_u32 v9, s11, 5, v1
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v131, v1, v118
	v_and_b32_e32 v1, 48, v0
	v_xor_b32_e32 v20, 24, v140
	v_or_b32_e32 v130, v7, v3
	v_bfe_i32 v13, v0, 5, 1
	v_xor_b32_e32 v16, 8, v140
	v_and_b32_e32 v17, 0x7c, v114
	v_add_nc_u32_e32 v157, 0, v20
	v_mov_b32_e32 v20, v25
	v_lshrrev_b32_e32 v15, 1, v1
	v_lshl_or_b32 v1, v1, 6, v116
	v_xor_b32_e32 v4, 32, v130
	v_and_b32_e32 v13, 0x204, v13
	v_and_b32_e32 v21, 0x80, v115
	v_xor_b32_e32 v6, 64, v130
	v_xor_b32_e32 v1, v1, v15
	v_and_b32_e32 v15, 24, v0
	v_xor_b32_e32 v8, 0x50, v130
	v_add_nc_u32_e32 v148, 0, v4
	v_add_nc_u32_e32 v155, 0, v16
	v_mov_b32_e32 v16, v25
	v_lshrrev_b32_e32 v18, 1, v15
	v_xor_b32_e32 v142, v13, v17
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v17, 6, v110
	v_add_nc_u32_e32 v150, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v13, v15, 6, v18
	v_dual_mov_b32 v6, v25 :: v_dual_lshlrev_b32 v15, 11, v2
	v_and_or_b32 v18, v114, 16, v21
	v_add_nc_u32_e32 v151, 0, v8
	v_or3_b32 v143, v13, v7, v14
	v_dual_mov_b32 v108, v25 :: v_dual_lshlrev_b32 v7, 3, v111
	v_mov_b32_e32 v8, v25
	v_or3_b32 v13, v18, v15, v17
	v_dual_mov_b32 v15, 0x5410 :: v_dual_lshlrev_b32 v2, 5, v2
	v_mov_b32_e32 v17, 0x7632
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v119, 1, v118
	v_or_b32_e32 v120, 2, v118
	v_or_b32_e32 v121, 3, v118
	v_or_b32_e32 v122, 4, v118
	v_or_b32_e32 v123, 5, v118
	v_or_b32_e32 v124, 6, v118
	v_or_b32_e32 v125, 7, v118
	v_or3_b32 v144, v13, v7, v2
	v_cndmask_b32_e64 v13, 0x1054, v15, s2
	v_cndmask_b32_e64 v15, 0x3276, v17, s2
	v_xor_b32_e32 v10, 0x60, v130
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_add_nc_u32 v132, v9, v118
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_add_nc_u32 v133, v9, v119
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v134, v9, v120
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v135, v9, v121
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_add_nc_u32 v136, v9, v122
	v_add_nc_u32_e32 v137, v9, v123
	v_add_nc_u32_e32 v138, v9, v124
	v_add_nc_u32_e32 v139, v9, v125
	v_and_b32_e32 v9, 0x80, v67
	v_xor_b32_e32 v17, 12, v143
	v_xor_b32_e32 v21, 32, v144
	v_lshl_or_b32 v13, v13, 8, v13
	v_lshl_or_b32 v15, v15, 8, v15
	v_add_nc_u32_e32 v152, 0, v10
	v_add_nc_u32_e32 v161, 0, v17
	v_add_nc_u32_e32 v162, 0, v21
	v_and_b32_e32 v13, 0x540054, v13
	v_and_b32_e32 v15, 0x760076, v15
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v21, v25
	v_lshl_or_b32 v2, v12, 9, v2
	v_lshl_or_b32 v12, v12, 3, v14
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v141, 0, v9
	v_or_b32_e32 v9, v142, v9
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s0, 0x80000
	v_xor_b32_e32 v3, 16, v130
	v_xor_b32_e32 v5, 48, v130
	v_xor_b32_e32 v11, 0x70, v130
	v_xor_b32_e32 v19, 16, v140
	v_xor_b32_e32 v9, 0x408, v9
	v_xor_b32_e32 v18, 4, v143
	v_xor_b32_e32 v7, 8, v143
	v_xor_b32_e32 v14, 64, v144
	v_xor_b32_e32 v22, 0x60, v144
	v_xor_b32_e32 v2, v2, v12
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v12, 0, v110
	v_lshl_or_b32 v13, v13, 4, v13
	v_lshl_or_b32 v15, v15, 4, v15
	s_sext_i32_i16 s0, s0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s15, 4
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[106:107], null, s39, v66, v[65:66]
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s0, s0, 10
	s_lshl_b32 s14, s1, 14
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s10, s3
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	.loc	1 656 32                        ; attention.py:656:32
	s_and_b32 s66, s0, 0xfffff800
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s39, v65
	v_and_b32_e32 v145, 0x5040504, v13
	v_and_b32_e32 v146, 0x7060706, v15
	v_add_nc_u32_e32 v147, 0, v3
	v_add_nc_u32_e32 v149, 0, v5
	v_add_nc_u32_e32 v153, 0, v11
	v_add_nc_u32_e32 v156, 0, v19
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v158, 0, v9
	v_add_nc_u32_e32 v159, 0, v18
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v160, 0, v7
	v_add_nc_u32_e32 v163, 0, v14
	v_dual_mov_b32 v107, v25 :: v_dual_add_nc_u32 v164, 0, v22
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v165, v12, v2
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_add_nc_u32_e32 v154, v141, v1
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v166, 3, v131
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v167, 4, v131
	v_add_nc_u32_e32 v168, 5, v131
	v_add_nc_u32_e32 v169, 6, v131
	v_add_nc_u32_e32 v170, 7, v131
	v_lshl_add_u32 v171, v109, 1, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s67, s8, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s8, s11, s50
	s_add_i32 s68, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s40, 0
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 656 32                        ; attention.py:656:32
	s_add_i32 s66, s66, s14
	s_add_i32 s68, s68, s8
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s69, s39, 4
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	s_mov_b32 s70, 0x76543210
	s_mov_b32 s60, s6
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s1, s66, s64
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v74, s64, v124
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s4, s1, s51
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v78, s64, v120
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v84, s4, v105, 1
	v_add_lshl_u32 v85, s4, v112, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v77, s64, v122
	v_or_b32_e32 v75, s64, v118
	v_or_b32_e32 v76, s64, v125
	v_or_b32_e32 v79, s64, v123
	v_or_b32_e32 v80, s64, v121
	v_or_b32_e32 v81, s64, v119
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v74, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s28, v74, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v74, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v74, v129
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v74, 0x80000000, v84, s36
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s31, v78, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s33, v78, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v78, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v78, v129
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v78, 0x80000000, v85, s36
	v_mad_u64_u32 v[89:90], null, s1, s39, v[106:107]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v77, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s30, v77, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v77, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s19, v77, v129
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v75, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s24, v75, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s18, v75, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s20, v75, v129
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v76, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s10, v76, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v76, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v76, v129
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v79, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v79, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v79, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v79, v129
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v80, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v80, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v80, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s8, v80, v129
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v81, v126
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s35, v81, v128
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v81, v127
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s26, v81, v129
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_b128 v[74:77], v74, s[56:59], 0 offen
	buffer_load_b128 v[78:81], v78, s[56:59], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v72, s47 :: v_dual_add_nc_u32 v73, 0, v130
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v71, s46 :: v_dual_mov_b32 v70, s45
	v_dual_mov_b32 v69, s44 :: v_dual_mov_b32 v68, s43
	v_dual_mov_b32 v67, s42 :: v_dual_mov_b32 v66, s41
	v_dual_mov_b32 v65, s40 :: v_dual_add_nc_u32 v92, v141, v142
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v82, 1, v131
	v_add_nc_u32_e32 v83, 2, v131
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s3, s68, s64
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s27, s27, s28
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v179, s3, v167, 1
	v_add_lshl_u32 v190, s3, v82, 1
	v_add_lshl_u32 v189, s3, v83, 1
	v_add_lshl_u32 v180, s3, v169, 1
	v_add_lshl_u32 v96, s3, v166, 1
	v_add_lshl_u32 v97, s3, v168, 1
	v_add_lshl_u32 v99, s3, v170, 1
	v_add_lshl_u32 v188, s3, v131, 1
	v_add_lshl_u32 v181, s3, v136, 1
	v_add_lshl_u32 v187, s3, v138, 1
	v_add_lshl_u32 v185, s3, v133, 1
	v_add_lshl_u32 v101, s3, v135, 1
	v_add_lshl_u32 v103, s3, v137, 1
	v_add_lshl_u32 v102, s3, v139, 1
	v_add_lshl_u32 v186, s3, v134, 1
	v_add_lshl_u32 v183, s3, v132, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s29, s29, s30
	s_and_b32 s3, s31, s33
	s_and_b32 s30, s34, s35
	s_and_b32 s28, vcc_lo, s27
	s_and_b32 s27, vcc_lo, s30
	s_and_b32 s30, vcc_lo, s3
	s_and_b32 s3, s23, s24
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v180, 0x80000000, v180, s28
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, vcc_lo, s3
	s_and_b32 s3, s15, s16
	s_and_b32 s16, s17, s19
	s_and_b32 s17, s21, s22
	s_and_b32 s15, vcc_lo, s3
	s_and_b32 s3, s18, s20
	s_and_b32 s21, vcc_lo, s17
	s_and_b32 s17, vcc_lo, s3
	s_and_b32 s3, s9, s10
	s_and_b32 s10, s11, s12
	s_and_b32 s11, s13, s14
	s_and_b32 s9, vcc_lo, s3
	s_and_b32 s29, vcc_lo, s29
	s_and_b32 s13, vcc_lo, s10
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v190, 0x80000000, v190, s27
	v_cndmask_b32_e64 v99, 0x80000000, v99, s9
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s18, vcc_lo, s11
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v179, 0x80000000, v179, s29
	v_cndmask_b32_e64 v97, 0x80000000, v97, s13
	v_cndmask_b32_e64 v189, 0x80000000, v189, s30
	v_cndmask_b32_e64 v96, 0x80000000, v96, s18
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s4
	s_and_b32 s19, s25, s26
	s_and_b32 s3, s5, s6
	s_and_b32 s4, s7, s8
	s_and_b32 s6, vcc_lo, s1
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s20, vcc_lo, s3
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v187, 0x80000000, v187, s15
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, vcc_lo, s16
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v183, 0x80000000, v183, s17
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, vcc_lo, s4
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v185, 0x80000000, v185, s19
	v_cndmask_b32_e64 v181, 0x80000000, v181, s16
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	v_cndmask_b32_e64 v186, 0x80000000, v186, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v176.l, 0
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v91, 0, v140
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s64, s64, 32
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v117, v[74:77]
	s_waitcnt vmcnt(0)
	ds_store_b128 v117, v[78:81] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[195:198], v147
	ds_load_b128 v[191:194], v73
	ds_load_b128 v[199:202], v73 offset:2048
	ds_load_b128 v[203:206], v147 offset:2048
	ds_load_b128 v[211:214], v149
	ds_load_b128 v[207:210], v148
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x3
	buffer_load_u16 v187, v187, s[52:55], 0 offen
	buffer_load_u16 v185, v185, s[52:55], 0 offen
	buffer_load_u16 v181, v181, s[52:55], 0 offen
	buffer_load_u16 v186, v186, s[52:55], 0 offen
	v_mov_b16_e64 v90.l, v176.l
	v_mov_b16_e64 v95.l, v176.l
	v_mov_b16_e64 v98.l, v176.l
	v_mov_b16_e64 v100.l, v176.l
	v_mov_b16_e64 v182.l, v176.l
	v_mov_b16_e64 v184.l, v176.l
	v_mov_b16_e64 v104.l, v176.l
	.loc	1 700 30                        ; attention.py:700:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v185.h, v176.l
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_u16 v183, v183, s[52:55], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v183.h, v176.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v173, v173, v173
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[191:198], v[57:64], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[195:198], v151
	ds_load_b128 v[191:194], v150
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[199:206], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[207:214], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v148 offset:2048
	ds_load_b128 v[69:72], v149 offset:2048
	ds_load_b128 v[199:202], v152 offset:2048
	ds_load_b128 v[203:206], v153 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[191:198], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[195:198], v153
	ds_load_b128 v[191:194], v152
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v150 offset:2048
	ds_load_b128 v[69:72], v151 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[191:198], v[33:40], v[81:88]
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x6
	buffer_load_u16 v180, v180, s[52:55], 0 offen
	buffer_load_u16 v190, v190, s[52:55], 0 offen
	buffer_load_u16 v179, v179, s[52:55], 0 offen
	buffer_load_u16 v191, v189, s[52:55], 0 offen
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	buffer_load_u16 v97, v97, s[52:55], 0 offen
	buffer_load_u16 v193, v96, s[52:55], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v192, 1, v89
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[41:48], v[73:80]
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v71.l, v176.l
	v_mov_b16_e64 v70.l, v176.l
	v_mov_b16_e64 v68.l, v176.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v96, 0x80000000, v192, s0
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v69.l, v176.l
	v_mov_b16_e64 v72.l, v176.l
	.loc	1 663 30                        ; attention.py:663:30
	v_wmma_f32_16x16x16_bf16 v[73:80], v[199:206], v[33:40], v[73:80]
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v89, v89, s69, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v65.h, v176.l
	v_mov_b16_e64 v66.h, v176.l
	v_mov_b16_e64 v67.h, v176.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v179.h, v176.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v187.h, 0xff80, v187.l, s15
	v_cndmask_b16 v187.l, 0xff80, v181.l, s16
	v_cndmask_b16 v186.h, 0xff80, v186.l, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v69.h, v187.h
	v_mov_b16_e64 v72.h, v187.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v90.h, v186.h
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s24, 0xff800000, v72
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v186.l, 0xff80, v183.l, s17
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v90
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v189.h, 0xff80, v180.l, s28
	v_cndmask_b32_e64 v180, 0x80000000, v188, s23
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v191.h, 0xff80, v99.l, s9
	v_cndmask_b32_e64 v99, 0x80000000, v102, s6
	v_cndmask_b16 v188.h, 0xff80, v191.l, s30
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v191.l, 0xff80, v97.l, s13
	v_cndmask_b32_e64 v97, 0x80000000, v103, s20
	s_clause 0x3
	buffer_load_u16 v180, v180, s[52:55], 0 offen
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	buffer_load_u16 v97, v97, s[52:55], 0 offen
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	v_cndmask_b16 v189.l, 0xff80, v179.l, s29
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v190.h, 0xff80, v193.l, s18
	v_cndmask_b16 v190.l, 0xff80, v190.l, s27
	v_mov_b16_e64 v71.h, v189.h
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v68.h, v188.h
	v_mov_b16_e64 v98.h, v191.l
	v_mov_b16_e64 v95.h, v191.h
	v_mov_b16_e64 v70.h, v189.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v71
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v100.h, v190.h
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v68
	v_cmp_neq_f32_e64 s26, 0xff800000, v95
	v_cmp_neq_f32_e64 s5, 0xff800000, v70
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s7, s28, s3
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v98
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v68, 0, 1, s7
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v100
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s10, s29, s5
	s_and_b32 s12, s30, s11
	v_cndmask_b32_e64 v69, 0, 1, s10
	v_cndmask_b32_e64 v70, 0, 1, s12
	v_mov_b16_e32 v65.l, v68.l
	s_and_b32 s5, s16, s24
	s_and_b32 s11, s9, s26
	s_and_b32 s13, s13, s31
	v_cndmask_b32_e64 v90, 0, 1, s5
	v_cndmask_b32_e64 v95, 0, 1, s11
	v_mov_b16_e32 v66.l, v69.l
	v_mov_b16_e32 v67.l, v70.l
	v_lshlrev_b16 v65.l, 8, v65.l
	v_mov_b16_e32 v70.l, v90.l
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v180.h, v176.l
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v67.l, 8, v67.l
	v_or_b16 v95.h, v66.l, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v188.l, 0xff80, v180.l, s23
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v102.h, 0xff80, v99.l, s6
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v102.l, 0xff80, v97.l, s20
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v101.h, 0xff80, v101.l, s1
	v_cndmask_b16 v101.l, 0xff80, v185.l, s19
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v154, v[188:189], v[186:187] offset1:32
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v176.h, v188.l
	v_mov_b16_e64 v182.h, v102.l
	v_mov_b16_e64 v184.h, v101.h
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v154, v[190:191], v[101:102] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[187:188], v91
	ds_load_b64 v[191:192], v155
	ds_load_b64 v[193:194], v156
	ds_load_b64 v[195:196], v157
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v176.h, v190.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v184
	v_cmp_neq_f32_e64 s35, 0xff800000, v182
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v97, 0, 1, s13
	s_and_b32 s14, s23, s8
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v176
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s1, s4
	s_and_b32 s1, s15, s22
	s_and_b32 s8, s21, s25
	s_and_b32 s15, s18, s33
	s_and_b32 s9, s20, s35
	v_cndmask_b32_e64 v71, 0, 1, s14
	v_cndmask_b32_e64 v72, 0, 1, s1
	v_cndmask_b32_e64 v91, 0, 1, s8
	v_cndmask_b32_e64 v98, 0, 1, s15
	v_cndmask_b32_e64 v100, 0, 1, s9
	s_and_b32 s16, s27, s37
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v190, 0xffff0000, v194
	v_mov_b16_e64 v176.h, v186.l
	v_and_b32_e32 v184, 0xffff0000, v191
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v68.l, v71.l
	v_mov_b16_e32 v69.l, v72.l
	v_mov_b16_e32 v71.l, v91.l
	v_mov_b16_e32 v72.l, v95.l
	v_mov_b16_e32 v90.l, v97.l
	v_mov_b16_e32 v91.l, v98.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v190, 0x3fb8aa3b, v190 :: v_dual_lshlrev_b32 v97, 16, v193
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v182, 16, v191
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v191, 0, 1, s16
	v_mov_b16_e32 v66.l, v100.l
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v100, 0xffff0000, v196
	v_lshlrev_b32_e32 v189, 16, v194
	v_mov_b16_e32 v104.h, v102.h
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v176.h, v101.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v95.l, v68.l, v67.l
	v_lshlrev_b16 v68.l, 8, v72.l
	v_lshlrev_b16 v68.h, 8, v91.l
	v_mov_b16_e64 v72.l, v191.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v100, 0x3fb8aa3b, v100
	v_dual_mul_f32 v191, 0x3fb8aa3b, v189 :: v_dual_lshlrev_b32 v186, 16, v192
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v101, 16, v187
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v104
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v94, 0, v144
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v72.l, v72.l, v68.h
	v_lshlrev_b16 v68.h, 8, v71.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v101
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v102, 0xffff0000, v187
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s6, s34
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v98, 0xffff0000, v193
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v99, 0, 1, s6
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v103, 16, v188
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v71, s67, v81 :: v_dual_add_nc_u32 v178, 0, v115
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v101, 0x3fb8aa3b, v102
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v104, 0xffff0000, v188
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v176
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v188, 0, 1, s4
	v_mov_b16_e32 v65.l, v99.l
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v98, 0x3fb8aa3b, v98
	v_dual_mul_f32 v102, 0x3fb8aa3b, v103 :: v_dual_fmac_f32 v101, s67, v82
	v_mul_f32_e32 v103, 0x3fb8aa3b, v104
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s17, s17, s3
	s_and_b32 s18, s19, s18
	v_or_b16 v72.h, v90.l, v68.l
	v_lshlrev_b16 v68.l, 8, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s17
	v_mov_b16_e64 v67.l, v188.l
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v97, 0x3fb8aa3b, v97
	v_dual_mul_f32 v104, 0x3fb8aa3b, v182 :: v_dual_add_nc_u32 v93, 0, v143
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v103, s67, v84
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v182, 0x3fb8aa3b, v184
	v_mul_f32_e32 v184, 0x3fb8aa3b, v186
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cndmask_b32_e64 v186, 0, 1, s18
	v_or_b16 v70.h, v70.l, v68.l
	v_mov_b16_e32 v68.l, v69.l
	v_lshlrev_b16 v67.l, 8, v67.l
	v_or_b16 v69.h, v66.l, v65.l
	v_mov_b16_e64 v65.l, v186.l
	s_waitcnt lgkmcnt(0)
	v_or_b16 v70.l, v68.l, v68.h
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v104, s67, v85 :: v_dual_and_b32 v91, 0xffff0000, v195
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v69.l, v65.l, v67.l
	ds_store_2addr_stride64_b32 v92, v95, v70 offset1:1
	ds_store_2addr_stride64_b32 v158, v72, v69 offset1:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v68, v93
	ds_load_b32 v69, v159
	ds_load_b32 v70, v160
	ds_load_b32 v72, v161
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v91, 0x3fb8aa3b, v91 :: v_dual_fmac_f32 v182, s67, v86
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v90, 16, v195
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v184, s67, v87 :: v_dual_fmac_f32 v97, s67, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, s67, v78
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v90, 0x3fb8aa3b, v90 :: v_dual_lshlrev_b32 v99, 16, v196
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v102, s67, v83 :: v_dual_and_b32 v187, 0xffff0000, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v98, s67, v74 :: v_dual_mul_f32 v99, 0x3fb8aa3b, v99
	v_dual_fmac_f32 v191, s67, v75 :: v_dual_fmac_f32 v190, s67, v76
	v_fmac_f32_e32 v90, s67, v77
	v_fmac_f32_e32 v100, s67, v80
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v73, 0x10000, v68
	v_lshrrev_b16 v65.l, 8, v68.l
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v81, 1, v70
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v99, s67, v79 :: v_dual_and_b32 v74, 0x10000, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s27, 0, v73
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s25, 1, v81
	v_and_b32_e32 v75, 0x10000, v70
	v_and_b32_e32 v79, 1, v69
	v_and_b32_e32 v82, 0x1000000, v70
	v_lshrrev_b16 v66.l, 8, v69.l
	v_lshrrev_b16 v67.l, 8, v70.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v102, s27
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s29, 0, v74
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v81, 0xff800000, v97, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v80, 0x1000000, v69
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v69, 0x1000000, v72
	v_cmp_eq_u16_e64 s35, 1, v65.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v188, 0xff800000, v184, s29
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v78, 0x1000000, v68
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v187, 0x3fb8aa3b, v187
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s20, 0, v69
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v101, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v77, 1, v68
	v_lshrrev_b16 v68.l, 8, v72.l
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v67.l, 1, v67.l
	v_and_b32_e32 v76, 0x10000, v72
	v_and_b32_e32 v85, 1, v72
	v_and_b16 v72.l, 1, v68.l
	v_cmp_eq_u32_e64 s28, 1, v77
	v_cmp_ne_u32_e64 s31, 0, v78
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v187, s67, v88
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s30, 1, v79
	v_cmp_ne_u32_e64 s33, 0, v80
	v_cmp_eq_u16_e64 s34, 1, v66.l
	v_cmp_ne_u32_e64 s22, 0, v75
	v_cmp_ne_u32_e64 s24, 0, v82
	v_cmp_eq_u16_e64 s26, 1, v67.l
	v_cmp_eq_u32_e64 s21, 1, v85
	v_cmp_ne_u32_e64 s19, 0, v76
	v_cmp_eq_u16_e64 s23, 1, v72.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v71, s28
	v_cndmask_b32_e64 v71, 0xff800000, v103, s31
	v_cndmask_b32_e64 v186, 0xff800000, v104, s30
	v_cndmask_b32_e64 v189, 0xff800000, v187, s33
	v_cndmask_b32_e64 v187, 0xff800000, v182, s34
	v_cndmask_b32_e64 v83, 0xff800000, v191, s22
	v_cndmask_b32_e64 v84, 0xff800000, v190, s24
	v_cndmask_b32_e64 v82, 0xff800000, v98, s26
	v_cndmask_b32_e64 v85, 0xff800000, v90, s21
	v_cndmask_b32_e64 v87, 0xff800000, v99, s19
	v_cndmask_b32_e64 v88, 0xff800000, v100, s20
	v_cndmask_b32_e64 v86, 0xff800000, v91, s23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v94, v[68:71]
	ds_store_b128 v162, v[186:189]
	ds_store_b128 v163, v[81:84]
	ds_store_b128 v164, v[85:88]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[73:76], v96, s[60:63], 0 offen
	buffer_load_b128 v[77:80], v89, s[60:63], 0 offen
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v182, v68, v69
	v_max3_f32 v184, v71, v186, v187
	v_max3_f32 v190, v82, v83, v84
	v_max3_f32 v191, v85, v86, v87
	v_max3_f32 v72, v188, v189, v81
.Ltmp2:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v177
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v182, v182, v70, v184
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[101:104], v165
	ds_load_b128 v[93:96], v165 offset:512
	ds_load_b128 v[97:100], v165 offset:1024
	ds_load_b128 v[89:92], v165 offset:1536
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v184, v190, v191, v88
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v176.h, v176.l
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s64, s65
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v72, v182, v72, v184
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v178, v[73:76]
	s_waitcnt vmcnt(0)
	ds_store_b128 v178, v[77:80] offset:2048
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v182, v72, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v182, v177, v72, v182
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v182
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v72, v177, v182
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v68, v182
	v_sub_f32_e32 v70, v70, v182
	v_sub_f32_e32 v71, v71, v182
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v72, v72
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v82, v82, v182
	v_sub_f32_e32 v84, v84, v182
	v_sub_f32_e32 v81, v81, v182
	v_sub_f32_e32 v83, v83, v182
	v_sub_f32_e32 v85, v85, v182
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s35
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v177, 0, v72, s3
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v184, v186, v182
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s28
	v_cndmask_b32_e64 v71, 0, v71, s31
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.l, v69.h
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v186, v187, v182 :: v_dual_mul_f32 v29, v29, v177
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v184, v184
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v187, v188, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v186, v186
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.l, v68.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v187, v187
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, v71.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v179.l, v70.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v184, 0, v184, s30
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v30, v30, v177
	v_dual_mul_f32 v17, v17, v177 :: v_dual_and_b32 v66, 1, v66
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v186, s34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v181.l, v184.h
	v_and_b32_e32 v67, 1, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v188, v189, v182 :: v_dual_and_b32 v179, 1, v179
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v31, v31, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v180.l, v72.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v187, 0, v187, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v69, v69
	v_cmp_o_f32_e64 s27, v68, v68
	v_cmp_o_f32_e64 s28, v71, v71
	v_cmp_o_f32_e64 s29, v70, v70
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v19, v19, v177 :: v_dual_and_b32 v180, 1, v180
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v181, 1, v181
	v_add3_u32 v65, v69, v65, 0x7fff
	v_add3_u32 v66, v68, v66, 0x7fff
	v_add3_u32 v67, v71, v67, 0x7fff
	v_add3_u32 v68, v70, v179, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v188, v188
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s30, v72, v72
	v_cmp_o_f32_e64 s31, v184, v184
	v_add3_u32 v69, v72, v180, 0x7fff
	v_add3_u32 v70, v184, v181, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v179.l, 0x7fff, v66.h, s27
	v_cndmask_b16 v180.h, 0x7fff, v67.h, s28
	v_cndmask_b16 v180.l, 0x7fff, v68.h, s29
	v_cndmask_b16 v181.h, 0x7fff, v69.h, s30
	v_cndmask_b16 v181.l, 0x7fff, v70.h, s31
	v_permlanex16_b32 v66, v179, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v186, 0, v188, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v68, v180, s70, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v185.l, v187.h
	v_permlanex16_b32 v70, v181, s70, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v179, v145
	v_perm_b32 v66, v66, v179, v146
	v_perm_b32 v67, v68, v180, v145
	v_perm_b32 v68, v68, v180, v146
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v179, v100, v100
	v_max_f32_e32 v180, v104, v104
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v183.l, v186.h
	v_perm_b32 v69, v70, v181, v145
	v_perm_b32 v70, v70, v181, v146
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v181, v98, v103, v99
	v_max_f32_e32 v179, v180, v179
	v_max3_f32 v180, v101, v97, v102
.Ltmp14:
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v32, v32, v177 :: v_dual_and_b32 v183, 1, v183
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v185, 1, v185
	v_cmp_o_f32_e64 s33, v186, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v179, v180, v181, v179
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s34, v187, v187
	v_add3_u32 v71, v186, v183, 0x7fff
	v_add3_u32 v72, v187, v185, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v25, v25, v177 :: v_dual_mov_b32 v180, v179
	v_mul_f32_e32 v26, v26, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v183.h, 0x7fff, v71.h, s33
	v_cndmask_b16 v183.l, 0x7fff, v72.h, s34
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v177
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v180 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v181, v96, v96 :: v_dual_mul_f32 v10, v10, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v183, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v14, v14, v177
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
.Ltmp21:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v177
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v82
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v72, v183, v145
	v_perm_b32 v72, v72, v183, v146
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v171 offset:608
	ds_load_u16_d16 v74, v171 offset:352
	ds_load_u16_d16 v186, v171 offset:768
	ds_load_u16_d16 v183, v171
	ds_load_u16_d16 v193, v171 offset:576
	ds_load_u16_d16 v194, v171 offset:832
	ds_load_u16_d16 v187, v171 offset:1024
	ds_load_u16_d16 v195, v171 offset:1088
	ds_load_u16_d16 v188, v171 offset:1280
	ds_load_u16_d16 v196, v171 offset:1344
	ds_load_u16_d16 v189, v171 offset:1536
	ds_load_u16_d16 v197, v171 offset:1600
	ds_load_u16_d16 v190, v171 offset:1792
	ds_load_u16_d16 v185, v171 offset:512
	ds_load_u16_d16 v184, v171 offset:256
	ds_load_u16_d16 v198, v171 offset:1856
	ds_load_u16_d16 v200, v171 offset:288
	ds_load_u16_d16 v199, v171 offset:32
	ds_load_u16_d16 v191, v171 offset:64
	ds_load_u16_d16 v192, v171 offset:320
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v179, v179, v180
.Ltmp23:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v74, v171 offset:480
	ds_load_u16_d16 v73, v171 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v183, v171 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v193, v171 offset:704
	ds_load_u16_d16_hi v186, v171 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v194, v171 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v187, v171 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v195, v171 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v188, v171 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v196, v171 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v189, v171 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v197, v171 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v190, v171 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v185, v171 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v184, v171 offset:384
	ds_load_u16_d16 v201, v171 offset:544
	ds_load_u16_d16 v76, v171 offset:864
	ds_load_u16_d16 v77, v171 offset:1120
	ds_load_u16_d16 v78, v171 offset:1376
	ds_load_u16_d16 v79, v171 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v198, v171 offset:1984
	ds_load_u16_d16 v178, v171 offset:2048
	ds_load_u16_d16 v80, v171 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v199, v171 offset:160
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v191, v171 offset:192
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v180, v179
.Ltmp25:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v202, v171 offset:800
	ds_load_u16_d16 v203, v171 offset:1056
	ds_load_u16_d16 v204, v171 offset:1312
	ds_load_u16_d16 v205, v171 offset:1568
	ds_load_u16_d16 v206, v171 offset:1824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v201, v171 offset:672
	ds_load_u16_d16_hi v75, v171 offset:736
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[183:190], v[65:72], v[25:32]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v183, v90, v95, v91
.Ltmp29:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v73, v171 offset:224
	ds_load_u16_d16_hi v200, v171 offset:416
	ds_load_u16_d16_hi v192, v171 offset:448
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v202, v171 offset:928
	ds_load_u16_d16_hi v76, v171 offset:992
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v203, v171 offset:1184
	ds_load_u16_d16_hi v77, v171 offset:1248
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v204, v171 offset:1440
	ds_load_u16_d16_hi v78, v171 offset:1504
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v205, v171 offset:1696
	ds_load_u16_d16_hi v79, v171 offset:1760
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v206, v171 offset:1952
	ds_load_u16_d16_hi v80, v171 offset:2016
	ds_load_u16_d16_hi v178, v171 offset:2176
	ds_load_u16_d16 v186, v171 offset:2080
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
.Ltmp31:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v18, v18, v177
	v_mul_f32_e32 v20, v20, v177
	v_dual_mul_f32 v21, v21, v177 :: v_dual_sub_f32 v86, v86, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v179, v179, v180
	v_max_f32_e32 v180, v92, v92
.Ltmp33:
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v22, v22, v177 :: v_dual_sub_f32 v87, v87, v182
	v_dual_mul_f32 v23, v23, v177 :: v_dual_sub_f32 v88, v88, v182
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v181, v180
	v_max3_f32 v181, v93, v89, v94
.Ltmp35:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v84, v84
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[199:206], v[65:72], v[17:24]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v180, v181, v183, v180
	v_mov_b32_e32 v199, v107
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v82, v82
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v86, v86
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v181, v180
.Ltmp39:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v85, v85
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s25
	v_cndmask_b32_e64 v84, 0, v84, s24
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v88, v88
.Ltmp40:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v181, v181 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v87, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v81, v81
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s22
	v_cndmask_b32_e64 v86, 0, v86, s23
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v181, v181, v181
.Ltmp43:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v85, s21
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v107, v175, v175
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v83, v83
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v88, s20
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v181
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v85, v85
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v87, s19
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v12, v12, v177 :: v_dual_max_f32 v107, v107, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v181, v180
.Ltmp47:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v16, v16, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v181, v181, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v180, v180, v181
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v82.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v173, v173, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v172, v172, v172 :: v_dual_and_b32 v181, 1, v181
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v93, v93, v173 :: v_dual_max_f32 v172, v172, v179
	v_sub_f32_e32 v95, v95, v173
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v82, v82, v181, 0x7fff
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v81.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v100, v100, v172
	v_sub_f32_e32 v101, v101, v172
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v82.h, 0x7fff, v82.h, s3
	v_cmp_o_f32_e64 s3, v84, v84
	v_and_b32_e32 v181, 1, v181
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v97, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v102, v102, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v100
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v81, v81, v181, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v82.l, 0x7fff, v81.h, s25
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s14
	v_cndmask_b32_e64 v100, 0, v100, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v181, v82, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v97, 0, v97, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v93, 0, v93, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v81, v181, v82, v145
	v_perm_b32 v82, v181, v82, v146
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v84.h
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v97, v101, v97
.Ltmp52:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v181, 1, v181
	v_add3_u32 v84, v84, v181, 0x7fff
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v83.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s3
	v_cmp_o_f32_e64 s3, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v181, 1, v181
	v_add3_u32 v83, v83, v181, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v84.l, 0x7fff, v83.h, s22
	v_permlanex16_b32 v181, v84, s70, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v83, v181, v84, v145
	v_perm_b32 v84, v181, v84, v146
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v86.h
	v_and_b32_e32 v181, 1, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v86, v86, v181, 0x7fff
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v85.h
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s3
	v_cmp_o_f32_e64 s3, v88, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v181, 1, v181
	v_add3_u32 v85, v85, v181, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v86.l, 0x7fff, v85.h, s21
	v_permlanex16_b32 v181, v86, s70, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v85, v181, v86, v145
	v_perm_b32 v86, v181, v86, v146
	v_mov_b16_e64 v181.h, v176.l
	v_mov_b16_e64 v181.l, v88.h
	v_mov_b16_e64 v176.l, v87.h
	v_and_b32_e32 v181, 1, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v176, 1, v176
	v_add3_u32 v88, v88, v181, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v87, v87, v176, 0x7fff
	v_cndmask_b16 v88.h, 0x7fff, v88.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v88.l, 0x7fff, v87.h, s19
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v175
	v_cmp_neq_f32_e64 s19, 0xff800000, v174
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v176, v88, s70, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v87, v176, v88, v145
	v_perm_b32 v88, v176, v88, v146
	v_mov_b32_e32 v176, v108
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v104, v104, v172 :: v_dual_sub_f32 v89, v89, v173
	v_dual_sub_f32 v99, v99, v172 :: v_dual_sub_f32 v90, v90, v173
	v_sub_f32_e32 v94, v94, v173
	v_dual_sub_f32 v98, v98, v172 :: v_dual_sub_f32 v91, v91, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v90
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v103, v103, v172 :: v_dual_sub_f32 v96, v96, v173
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v99, v99
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v92, v92, v173
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v108, v174, v174
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s18
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v92, v92
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v108, v108, v180
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s15
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v89, v93, v89
.Ltmp54:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v94
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v91, s9
	v_cndmask_b32_e64 v99, 0, v99, s13
.Ltmp55:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v101, v98
.Ltmp56:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v103
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v13, v13, v177
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v92, s6
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v4, v4, v177
	v_mul_f32_e32 v8, v8, v177
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s8
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v177
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v93, v90
.Ltmp58:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v95
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v2, v2, v177 :: v_dual_add_f32 v99, v101, v99
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v89, v89, v90
.Ltmp60:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s5
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s7
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v93, v91
.Ltmp62:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v101, v100
.Ltmp64:
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v9, v9, v177 :: v_dual_add_f32 v94, v99, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s1
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v15, v15, v177 :: v_dual_add_f32 v92, v93, v92
	v_mul_f32_e32 v1, v1, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v93, v97, v98 :: v_dual_add_f32 v90, v91, v92
.Ltmp66:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v177
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v93, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v100, v89, v90
.Ltmp68:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v177
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v101, v99 :: v_dual_mov_b32 v102, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v101, v101 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v177
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v177, v175, v107
	v_dual_sub_f32 v175, v174, v108 :: v_dual_mov_b32 v174, v108
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[191:198], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v179, v177
	v_exp_f32_e32 v180, v175
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v74, v100, v102 :: v_dual_add_f32 v73, v99, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v175, v107 :: v_dual_mov_b32 v76, v74
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v75, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp73:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v97, 0, v179, s3
	v_cndmask_b32_e64 v98, 0, v180, s19
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v89, v171 offset:2112
	ds_load_u16_d16 v180, v171 offset:2560
	ds_load_u16_d16 v91, v171 offset:2624
	ds_load_u16_d16 v90, v171 offset:2368
	ds_load_u16_d16 v179, v171 offset:2304
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v108, v74, v76
	v_mov_b32_e32 v177, v182
.Ltmp76:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v66, v171 offset:2400
	ds_load_u16_d16 v181, v171 offset:2816
	ds_load_u16_d16 v92, v171 offset:2880
	ds_load_u16_d16 v67, v171 offset:2656
	ds_load_u16_d16 v182, v171 offset:3072
	ds_load_u16_d16 v93, v171 offset:3136
	ds_load_u16_d16 v68, v171 offset:2912
	ds_load_u16_d16 v183, v171 offset:3328
	ds_load_u16_d16 v94, v171 offset:3392
	ds_load_u16_d16 v69, v171 offset:3168
	ds_load_u16_d16 v184, v171 offset:3584
	ds_load_u16_d16 v95, v171 offset:3648
	ds_load_u16_d16 v70, v171 offset:3424
	ds_load_u16_d16 v185, v171 offset:3840
	ds_load_u16_d16 v96, v171 offset:3904
	ds_load_u16_d16 v71, v171 offset:3680
	ds_load_u16_d16 v72, v171 offset:3936
	ds_load_u16_d16 v65, v171 offset:2144
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v89, v171 offset:2240
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v90, v171 offset:2496
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v179, v171 offset:2432
	ds_load_u16_d16 v187, v171 offset:2336
	ds_load_u16_d16_hi v180, v171 offset:2688
	ds_load_u16_d16_hi v91, v171 offset:2752
	ds_load_u16_d16 v188, v171 offset:2592
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v181, v171 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v92, v171 offset:3008
	ds_load_u16_d16 v189, v171 offset:2848
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v182, v171 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v93, v171 offset:3264
	ds_load_u16_d16 v190, v171 offset:3104
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v183, v171 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v94, v171 offset:3520
	ds_load_u16_d16 v191, v171 offset:3360
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v184, v171 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v95, v171 offset:3776
	ds_load_u16_d16 v192, v171 offset:3616
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v185, v171 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v96, v171 offset:4032
	ds_load_u16_d16 v193, v171 offset:3872
	ds_load_u16_d16_hi v186, v171 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v65, v171 offset:2272
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v187, v171 offset:2464
	ds_load_u16_d16_hi v66, v171 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v188, v171 offset:2720
	ds_load_u16_d16_hi v67, v171 offset:2784
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v189, v171 offset:2976
	ds_load_u16_d16_hi v68, v171 offset:3040
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v190, v171 offset:3232
	ds_load_u16_d16_hi v69, v171 offset:3296
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v191, v171 offset:3488
	ds_load_u16_d16_hi v70, v171 offset:3552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v192, v171 offset:3744
	ds_load_u16_d16_hi v71, v171 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v193, v171 offset:4000
	ds_load_u16_d16_hi v72, v171 offset:4064
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v107, v73, v75 :: v_dual_fmac_f32 v108, v176, v98
.Ltmp78:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[178:185], v[81:88], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[81:88], v[9:16]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v107, v199, v97
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[186:193], v[81:88], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[65:72], v[81:88], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v34, v116 :: v_dual_mov_b32 v35, v114
.LBB0_7:                                ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 0x80, v35
	v_add_nc_u32_e32 v34, 0, v34
	v_lshl_add_u32 v35, v113, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	ds_store_b64 v35, v[107:108]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v110
	s_mov_b32 s51, 0x31027000
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v111
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v109
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s50, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s38, v36
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s39, v36
	.loc	1 841 48                        ; attention.py:841:48
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
	v_div_scale_f32 v43, s3, v27, v37, v27
	v_div_scale_f32 v45, s4, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v43, v48
	v_div_scale_f32 v51, s5, v29, v37, v29
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
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s3, v30, v37, v30
	v_div_scale_f32 v43, null, v37, v37, v32
	s_mov_b32 vcc_lo, s4
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
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v40, v58
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s4, v31, v37, v31
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v50, -v42, v40, v41
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_scale_f32 v46, s6, v32, v37, v32
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v52, v49
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s4, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s5, v19, v37, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s4, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s6, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
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
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v46, s3, v10, v37, v10
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
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	v_div_scale_f32 v40, s3, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s4, v16, v37, v16
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
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
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
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
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s6
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
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s5, v7, v37, v7
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s6, v8, v37, v8
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
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
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
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s39, v34
	v_cmp_gt_i32_e64 s4, s39, v35
	v_cmp_gt_i32_e64 s1, s39, v33
	.loc	1 846 36                        ; attention.py:846:36
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
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v12, v22, v17, v21
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s39, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s2, s0, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[48:51], 0 offen
	buffer_store_b128 v[5:8], v18, s[48:51], 0 offen
	buffer_store_b128 v[9:12], v19, s[48:51], 0 offen
	buffer_store_b128 v[13:16], v0, s[48:51], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp79:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13960
; TotalNumSgprs: 73
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 73
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
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
