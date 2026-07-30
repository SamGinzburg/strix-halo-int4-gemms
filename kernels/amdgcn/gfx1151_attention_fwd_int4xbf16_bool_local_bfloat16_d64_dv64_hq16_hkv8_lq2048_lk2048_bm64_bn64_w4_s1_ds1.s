	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s12, s[0:1], 0x84
	s_load_b32 s5, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v34, 1, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v36, 4, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s13, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s13, v34
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s13, s2
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_and_b32_e32 v33, 16, v36
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 587 23 is_stmt 1              ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v37, v0, 4, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v39, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v38, 0x60, v0
	v_and_b32_e32 v35, 15, v0
	v_and_b32_e32 v131, 16, v0
	v_lshlrev_b32_e32 v137, 2, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v6, v39, 30, v37
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s5, v34
	s_mul_i32 s2, s5, s8
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s5, v33
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s17, s17, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s13, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s69, 0, v131
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_add3_u32 v1, v2, v33, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s13, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s9, s2, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s14, s10, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s9, s9, 0x800
	v_lshlrev_b32_e32 v136, 3, v35
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[2:5], v1, s[16:19], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v38
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s9, s9, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s91, s14, 0x7fffffc0
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s11, s9, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v35
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s11, s11, 26
	s_add_i32 s100, s9, s11
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s13, v1
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s100, s100, 63
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s91, s100
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v40, v6, v2
	ds_bpermute_b32 v41, v6, v3
	ds_bpermute_b32 v42, v6, v4
	ds_bpermute_b32 v44, v6, v5
	ds_bpermute_b32 v43, v8, v2
	ds_bpermute_b32 v45, v8, v3
	ds_bpermute_b32 v46, v8, v4
	ds_bpermute_b32 v47, v8, v5
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v49, 2, v0
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v48, 3, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x1054, v2, s69
	v_cndmask_b32_e64 v3, 0x3276, v3, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v133, 0x5040504, v2
	v_and_b32_e32 v134, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
.LBB0_3:                                ; %Flow355
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x38
	s_load_b32 s90, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v135, 0x7c, v0
	v_or_b32_e32 v132, s8, v1
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
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
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	s_cbranch_vccnz .LBB0_71
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[72:79], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v132
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[70:71], s[0:1], 0x30
	s_load_b128 s[8:11], s[0:1], 0x68
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v49, 2, v135
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v123, v40, v43, s69
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v127, v43, v40, s69
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v2, 24, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v43, s13, v49
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v40, 12, v0
	v_and_b32_e32 v5, 0x80, v36
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v58, s13, v49
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s93, s77, 0xffff
	s_mov_b32 s92, s76
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s13, s0, -16
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v48, v1, s[92:95], 0 offen
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_and_b32 v1, 3, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s13
	v_xor_b32_e32 v36, v36, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s16, s3, 0x10007
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v59, 32, v43
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v122, v44, v47, s69
	v_cndmask_b32_e64 v124, v41, v45, s69
	v_cndmask_b32_e64 v126, v47, v44, s69
	v_cndmask_b32_e64 v128, v45, v41, s69
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v4, 0x80, v39
	v_dual_mov_b32 v81, 0xff800000 :: v_dual_lshlrev_b32 v138, 5, v0
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v39, 2, v38
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v41, 6, v131
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v44, 1, v40
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v52, 11, v1
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v53, 5, v1
	v_mov_b32_e32 v28, v25
	v_and_or_b32 v54, v137, 16, v5
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s16, s3, s16
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v60, s12, v43
	s_bfe_i32 s16, s16, 0x80000
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v144, 0, v36
	v_mov_b32_e32 v13, v25
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v43
	v_xor_b32_e32 v43, 8, v36
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v36, s12, v59
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_lshlrev_b32 v38, 3, v38
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v50, 8, v40
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v51, 0x260, v138
	v_lshl_or_b32 v55, v40, 3, v39
	v_or_b32_e32 v39, v39, v44
	v_or3_b32 v41, v54, v52, v41
	v_lshl_or_b32 v40, v40, 9, v53
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s12, s16
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s1, s14, 1
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s14, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s12, s12, 1
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_and_b32 v3, 48, v0
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v146, s7, v60
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v153, s7, v36
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s13, s14, 14
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s15, s14, 15
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v145, s6, v60
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s16, s12, 11
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v152, s6, v36
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s10, s3
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s6, s9, s14
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s7, s12, 12
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v121, v42, v46, s69
	v_cndmask_b32_e64 v125, v46, v42, s69
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v42, 0, v131
	v_lshl_add_u32 v139, v35, 1, 0
	v_cndmask_b32_e64 v56, 0x1054, v6, s69
	v_lshl_or_b32 v35, v35, 5, v44
	v_or3_b32 v147, v50, v51, v39
	v_or3_b32 v148, v41, v38, v53
	v_xor_b32_e32 v38, v40, v55
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s6, s6, s3
	s_add_i32 s3, s15, s7
	s_add_i32 s7, s13, s16
	v_lshrrev_b32_e32 v45, 1, v3
	v_lshl_or_b32 v46, v3, 6, v136
	v_cndmask_b32_e64 v57, 0x3276, v7, s69
	s_add_i32 s7, s7, s91
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v140, 1, v37
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v37, 4, v1
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v150, 0, v35
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v159, v42, v38
	v_dual_mov_b32 v155, v25 :: v_dual_add_nc_u32 v38, s7, v49
	v_lshl_or_b32 v44, v56, 8, v56
	v_xor_b32_e32 v52, 8, v35
	v_xor_b32_e32 v54, 16, v35
	v_xor_b32_e32 v56, 24, v35
	v_xor_b32_e32 v35, 8, v147
	v_xor_b32_e32 v45, v46, v45
	v_lshl_or_b32 v46, v57, 8, v57
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v143, s91, v37
	v_mov_b32_e32 v10, v25
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s90, v37
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v37, 32, v58
	v_xor_b32_e32 v36, 16, v147
	v_dual_mov_b32 v83, 0xff800000 :: v_dual_add_nc_u32 v160, 0, v35
	v_add_nc_u32_e32 v35, 32, v38
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v47, 0, v4
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v39, 0x540054, v44
	v_dual_mov_b32 v1, v25 :: v_dual_and_b32 v40, 0x760076, v46
	v_dual_mov_b32 v154, v25 :: v_dual_add_nc_u32 v161, 0, v36
	v_mul_lo_u32 v46, s11, v58
	v_mul_lo_u32 v37, s11, v37
	v_mul_lo_u32 v36, s90, v38
	v_mul_lo_u32 v35, s90, v35
	v_add_nc_u32_e32 v34, s7, v34
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v149, 0, v43
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v151, v47, v45
	v_xor_b32_e32 v41, 24, v147
	v_xor_b32_e32 v43, 32, v148
	v_xor_b32_e32 v44, 64, v148
	v_xor_b32_e32 v45, 0x60, v148
	v_lshl_or_b32 v39, v39, 4, v39
	v_lshl_or_b32 v40, v40, 4, v40
	v_mad_u64_u32 v[129:130], null, s5, v34, v[33:34]
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v157, 0, v54
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v156, 0, v52
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v158, 0, v56
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v133, 0x5040504, v39
	v_and_b32_e32 v134, 0x7060706, v40
	v_add_nc_u32_e32 v162, 0, v41
	v_add_nc_u32_e32 v163, 0, v43
	v_add_nc_u32_e32 v164, 0, v44
	v_add_nc_u32_e32 v165, 0, v45
	v_add3_u32 v166, s6, v46, v143
	v_add3_u32 v167, s6, v37, v143
	v_lshl_add_u32 v130, v36, 1, v53
	v_lshl_add_u32 v168, v35, 1, v53
	s_mov_b32 s80, 0
	s_and_b32 s1, s1, 0xffffff80
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s101, s8, 0x3fb8aa3b
	s_and_b32 s79, s79, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s76, s90, 7
	s_lshl_b32 s77, s5, 6
	s_mov_b32 s81, s80
	s_mov_b32 s82, s80
	s_mov_b32 s83, s80
	s_mov_b32 s84, s80
	s_mov_b32 s85, s80
	s_mov_b32 s86, s80
	s_mov_b32 s87, s80
	s_mov_b32 s98, s94
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s96, s78
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s97, s79
	s_add_i32 s78, s3, s1
	s_mov_b32 s99, s95
	s_mov_b32 s79, 0x76543210
	s_mov_b32 s102, s80
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v169, 16, v48
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	v_and_b16 v84.h, 0xff, v67.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v93.h, v91.l
	v_mov_b16_e32 v91.h, v89.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v91.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v56, v56
	v_mul_f32_e32 v36, v169, v36
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v104.h, v101.l
	v_mov_b16_e32 v101.l, v67.l
	v_mov_b16_e32 v101.h, v98.l
	v_mov_b16_e32 v98.l, v67.l
	v_mov_b16_e32 v98.h, v96.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_dual_mul_f32 v56, v169, v56 :: v_dual_mul_f32 v91, v36, v91
	v_mul_f32_e32 v55, v169, v55
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v112.h, v110.l
	v_mov_b16_e32 v110.l, v67.l
	v_mov_b16_e32 v110.h, v108.l
	v_mov_b16_e32 v108.l, v67.l
	v_mov_b16_e32 v108.h, v106.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v56, v56, v98
	v_dual_mul_f32 v62, v169, v62 :: v_dual_mul_f32 v55, v55, v101
	v_mul_f32_e32 v61, v169, v61
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v88.h, v95.l
	v_mov_b16_e32 v95.l, v67.l
	v_mov_b16_e32 v95.h, v93.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_dual_mul_f32 v62, v62, v108 :: v_dual_mul_f32 v61, v61, v110
	v_mul_f32_e32 v34, v169, v34
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v113.h, v111.l
	v_mov_b16_e32 v111.l, v67.l
	v_mov_b16_e32 v111.h, v109.l
	v_mov_b16_e32 v109.l, v67.l
	v_mov_b16_e32 v109.h, v107.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v61, s101, v61 :: v_dual_mul_f32 v52, v169, v52
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v95, v34, v95
	v_mul_f32_e32 v51, v169, v51
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v85.h, 0xff, v67.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v67.h, v115.l
	v_mov_b16_e32 v115.l, v67.l
	v_mov_b16_e32 v115.h, v114.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v52, v52, v109
	v_dual_mul_f32 v58, v169, v58 :: v_dual_mul_f32 v51, v51, v111
	v_mul_f32_e32 v57, v169, v57
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v58, v115
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v100.h, v113.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v57, v57, v67 :: v_dual_mul_f32 v62, s101, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v113.l, v67.l
	v_mov_b16_e32 v102.h, v99.l
	v_mov_b16_e32 v99.l, v67.l
	v_mov_b16_e32 v99.h, v97.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_dual_mul_f32 v44, v169, v44 :: v_dual_mul_f32 v57, s101, v57
	v_mul_f32_e32 v50, v169, v50
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v106.l, v67.l
	v_mov_b16_e32 v106.h, v103.l
	v_mov_b16_e32 v103.l, v67.l
	v_mov_b16_e32 v103.h, v100.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v99, v44, v99
	v_dual_mul_f32 v63, v169, v63 :: v_dual_mul_f32 v50, v50, v113
	v_mul_f32_e32 v64, v169, v64
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v114.l, v67.l
	v_mov_b16_e32 v114.h, v112.l
	v_mov_b16_e32 v112.l, v67.l
	v_mov_b16_e32 v89.h, v87.l
	v_mov_b16_e32 v87.l, v67.l
	v_mov_b16_e32 v87.h, v86.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_dual_mul_f32 v60, v169, v60 :: v_dual_mul_f32 v63, v63, v106
	v_dual_mul_f32 v49, v169, v49 :: v_dual_mul_f32 v64, v64, v103
	v_mul_f32_e32 v38, v169, v38
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v100.l, v67.l
	v_mov_b16_e32 v96.h, v105.l
	v_mov_b16_e32 v105.l, v67.l
	v_mov_b16_e32 v105.h, v102.l
	v_mov_b16_e32 v102.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v39, v39
	v_dual_mul_f32 v59, v169, v59 :: v_dual_mul_f32 v60, v60, v112
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v103, s101, v64 :: v_dual_mul_f32 v42, v169, v42
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v87, v38, v87
	v_mul_f32_e32 v43, v169, v43
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v72.h, 0xff, v72.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v93.l, v67.l
	v_mov_b16_e32 v86.l, v67.l
	v_mov_b16_e32 v86.h, v85.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v39, v169, v39
	v_dual_mul_f32 v49, v49, v100 :: v_dual_mul_f32 v98, v42, v105
	v_dual_mul_f32 v41, v169, v41 :: v_dual_mul_f32 v100, v43, v102
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v102, s101, v60 :: v_dual_mul_f32 v35, v169, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v86, v39, v86
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v71.h, 0xff, v71.h
	v_and_b16 v70.h, 0xff, v70.h
	v_and_b16 v69.h, 0xff, v69.h
	v_and_b16 v66.l, 0xff, v66.l
	v_cmp_ne_u16_e64 s30, 0, v72.h
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v37, v37
	v_dual_mul_f32 v54, v169, v54 :: v_dual_mul_f32 v93, v35, v93
	.loc	1 681 34                        ; attention.py:681:34
	s_waitcnt vmcnt(0)
	v_and_b16 v35.l, 0xff, v76.l
	v_and_b16 v72.l, 0xff, v72.l
	v_and_b16 v68.h, 0xff, v68.h
	v_and_b16 v65.h, 0xff, v65.h
	v_cmp_ne_u16_e64 s5, 0, v66.l
	v_cmp_ne_u16_e64 s12, 0, v69.h
	v_cmp_ne_u16_e64 s17, 0, v70.h
	v_cmp_ne_u16_e64 s25, 0, v71.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s30, s40, s30
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v96.l, v67.l
	v_mov_b16_e32 v89.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v37, v169, v37 :: v_dual_mul_f32 v58, s101, v58
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s52, 0, v35.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v35, 0, 1, s30
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v71.l, 0xff, v71.l
	v_and_b16 v68.l, 0xff, v68.l
	v_cmp_ne_u16_e64 s1, 0, v65.h
	v_cmp_ne_u16_e64 s10, 0, v68.h
	v_cmp_ne_u16_e64 s31, 0, v72.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s15, s15, s5
	s_and_b32 s23, s23, s12
	s_and_b32 s26, s26, s17
	s_and_b32 s28, s28, s25
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v70.l, 0xff, v70.l
	v_cmp_ne_u16_e64 s7, 0, v85.h
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v107.h, v104.l
	v_mov_b16_e32 v104.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v40, v40
	v_dual_mul_f32 v96, v41, v96 :: v_dual_mul_f32 v51, s101, v51
	v_mul_f32_e32 v89, v37, v89
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v41, 0, 1, s15
	v_cndmask_b32_e64 v42, 0, 1, s23
	v_cndmask_b32_e64 v36, 0, 1, s26
	v_cndmask_b32_e64 v37, 0, 1, s28
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v66.h, 0xff, v66.h
	v_cmp_ne_u16_e64 s11, 0, v68.l
	v_cmp_ne_u16_e64 s29, 0, v71.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s9, s9, s1
	s_and_b32 s20, s20, s10
	s_and_b32 s31, s48, s31
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v69.l, 0xff, v69.l
	v_cmp_ne_u16_e64 s22, 0, v70.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s18, s18, s7
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v97.h, v94.l
	v_mov_b16_e32 v94.l, v67.l
	v_mov_b16_e32 v94.h, v92.l
	v_mov_b16_e32 v116.l, v67.l
	v_mov_b16_e32 v116.h, v84.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v45, v45
	v_dual_mul_f32 v53, v169, v53 :: v_dual_mul_f32 v54, v54, v104
	v_dual_mul_f32 v40, v169, v40 :: v_dual_mul_f32 v105, s101, v50
	v_mul_f32_e32 v46, v169, v46
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v39, 0, 1, s9
	v_cndmask_b32_e64 v38, 0, 1, s20
	v_cndmask_b32_e64 v50, 0, 1, s31
	v_lshlrev_b16 v35.h, 8, v36.l
	v_mov_b16_e32 v36.l, v42.l
	v_or_b16 v42.h, v37.l, v35.l
	v_mov_b16_e32 v35.l, v41.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v92.h, v90.l
	v_mov_b16_e32 v90.l, v67.l
	v_mov_b16_e32 v90.h, v88.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v59, v59, v114 :: v_dual_mul_f32 v48, v169, v48
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v44, 0, 1, s18
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_and_b16 v79.l, 0xff, v79.l
	v_and_b16 v65.l, 0xff, v65.l
	v_cmp_ne_u16_e64 s6, 0, v66.h
	v_cmp_ne_u16_e64 s8, 0, v84.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s21, s21, s11
	s_and_b32 s29, s37, s29
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v80.h, 0xff, v80.h
	v_cmp_ne_u16_e64 s13, 0, v69.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s27, s27, s22
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v97.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v101, v40, v116
	v_dual_mul_f32 v45, v169, v45 :: v_dual_mul_f32 v94, v46, v94
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v34, s101, v54
	v_mul_f32_e32 v104, s101, v49
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v46, 0, 1, s21
	v_cndmask_b32_e64 v49, 0, 1, s29
	v_or_b16 v42.l, v36.l, v35.h
	v_mov_b16_e32 v36.l, v50.l
	v_lshlrev_b16 v35.h, 8, v38.l
	v_lshlrev_b16 v35.l, 8, v35.l
	v_mov_b16_e32 v38.l, v39.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v92.l, v67.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v59, s101, v59
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v47, v169, v47 :: v_dual_mul_f32 v90, v48, v90
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v48, 0, 1, s27
	v_mov_b16_e32 v37.l, v44.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_and_b16 v78.l, 0xff, v78.l
	v_and_b16 v77.l, 0xff, v77.l
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_cmp_ne_u16_e64 s45, 0, v79.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s16, s16, s6
	s_and_b32 s19, s19, s8
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v80.l, 0xff, v80.l
	v_and_b16 v74.h, 0xff, v74.h
	v_cmp_ne_u16_e64 s51, 0, v80.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s24, s24, s13
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v97, v45, v97
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v43, 0, 1, s16
	v_cndmask_b32_e64 v45, 0, 1, s19
	v_lshlrev_b16 v36.l, 8, v36.l
	v_mov_b16_e32 v39.l, v49.l
	v_or_b16 v41.l, v38.l, v35.l
	v_mov_b16_e32 v35.l, v46.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_and_b16 v75.l, 0xff, v75.l
	v_and_b16 v75.h, 0xff, v75.h
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v33, v169, v33 :: v_dual_mul_f32 v92, v47, v92
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v47, 0, 1, s24
	v_or_b16 v41.h, v37.l, v35.h
	v_mov_b16_e32 v37.l, v48.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s41, 0, v77.l
	v_cmp_ne_u16_e64 s43, 0, v78.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s14, s14, s3
	s_and_b32 s45, s62, s45
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v78.h, 0xff, v78.h
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v74.l, 0xff, v74.l
	v_cmp_ne_u16_e64 s35, 0, v74.h
	v_cmp_ne_u16_e64 s47, 0, v80.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s51, s66, s51
	v_cndmask_b32_e64 v40, 0, 1, s14
	v_cndmask_b32_e64 v71, 0, 1, s45
	v_or_b16 v44.h, v39.l, v36.l
	v_mov_b16_e32 v36.l, v43.l
	v_lshlrev_b16 v35.l, 8, v35.l
	v_mov_b16_e32 v38.l, v45.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v73.l, 0xff, v73.l
	v_and_b16 v73.h, 0xff, v73.h
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v107.l, v67.l
	v_mov_b16_e32 v88.l, v67.l
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s38, 0, v75.h
	v_cmp_ne_u16_e64 s39, 0, v75.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v75, 0, 1, s51
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v47.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v79.h, 0xff, v79.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s41, s58, s41
	s_and_b32 s43, s60, s43
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v77.h, 0xff, v77.h
	v_cmp_ne_u16_e64 s36, 0, v74.l
	v_cmp_ne_u16_e64 s42, 0, v76.h
	v_cmp_ne_u16_e64 s46, 0, v78.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s35, s54, s35
	s_and_b32 s48, s64, s47
	v_cndmask_b32_e64 v66, 0, 1, s41
	v_cndmask_b32_e64 v69, 0, 1, s43
	v_lshlrev_b16 v36.l, 8, v36.l
	v_mov_b16_e32 v39.l, v40.l
	v_or_b16 v43.h, v38.l, v35.l
	v_mov_b16_e32 v35.l, v71.l
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v53, v53, v107 :: v_dual_mul_f32 v106, s101, v52
	v_dual_mul_f32 v88, v33, v88 :: v_dual_mul_f32 v33, s101, v55
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s33, 0, v73.h
	v_cmp_ne_u16_e64 s34, 0, v73.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v55, 0, 1, s35
	v_cndmask_b32_e64 v73, 0, 1, s48
	v_or_b16 v44.l, v37.l, v35.h
	v_mov_b16_e32 v37.l, v75.l
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s49, 0, v79.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s38, s56, s38
	s_and_b32 s54, s67, s52
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s44, 0, v77.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s37, s55, s36
	s_and_b32 s42, s59, s42
	s_and_b32 s46, s63, s46
	v_cndmask_b32_e64 v64, 0, 1, s38
	v_cndmask_b32_e64 v76, 0, 1, s54
	v_or_b16 v43.l, v39.l, v36.l
	v_mov_b16_e32 v36.l, v66.l
	v_lshlrev_b16 v35.l, 8, v35.l
	v_mov_b16_e32 v38.l, v69.l
	v_cndmask_b32_e64 v60, 0, 1, s37
	v_cndmask_b32_e64 v68, 0, 1, s42
	v_cndmask_b32_e64 v72, 0, 1, s46
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v73.l
	v_mov_b16_e32 v40.l, v55.l
	s_and_b32 s33, s50, s33
	s_and_b32 s50, s65, s49
	s_and_b32 s34, s53, s34
	s_and_b32 s40, s57, s39
	s_and_b32 s44, s61, s44
	v_cndmask_b32_e64 v52, 0, 1, s33
	v_cndmask_b32_e64 v74, 0, 1, s50
	v_lshlrev_b16 v36.l, 8, v36.l
	v_mov_b16_e32 v39.l, v64.l
	v_or_b16 v46.l, v38.l, v35.l
	v_mov_b16_e32 v35.l, v76.l
	v_cndmask_b32_e64 v54, 0, 1, s34
	v_cndmask_b32_e64 v65, 0, 1, s40
	v_cndmask_b32_e64 v70, 0, 1, s44
	v_or_b16 v46.h, v37.l, v35.h
	v_lshlrev_b16 v35.h, 8, v40.l
	v_mov_b16_e32 v37.l, v72.l
	v_mov_b16_e32 v38.l, v68.l
	v_mov_b16_e32 v40.l, v60.l
	v_or_b16 v45.h, v39.l, v36.l
	v_mov_b16_e32 v36.l, v52.l
	v_lshlrev_b16 v35.l, 8, v35.l
	v_mov_b16_e32 v39.l, v74.l
	v_lshlrev_b16 v36.h, 8, v37.l
	v_mov_b16_e32 v37.l, v70.l
	v_lshlrev_b16 v37.h, 8, v38.l
	v_mov_b16_e32 v38.l, v65.l
	v_lshlrev_b16 v38.h, 8, v40.l
	v_mov_b16_e32 v40.l, v54.l
	v_or_b16 v45.l, v36.l, v35.h
	v_or_b16 v48.h, v39.l, v35.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v72, s101, v90 :: v_dual_add_nc_u32 v35, 0, v147
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v48.l, v37.l, v36.h
	v_or_b16 v47.h, v38.l, v37.h
	v_or_b16 v47.l, v40.l, v38.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v151, v[41:42], v[45:46] offset1:32
	ds_store_2addr_b64 v151, v[43:44], v[47:48] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[37:38], v35
	ds_load_b64 v[41:42], v160
	ds_load_b64 v[45:46], v161
	ds_load_b64 v[49:50], v162
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v66, s101, v100 :: v_dual_mul_f32 v79, s101, v86
	v_dual_mul_f32 v54, s101, v56 :: v_dual_mul_f32 v69, s101, v97
	v_dual_mul_f32 v76, s101, v91 :: v_dual_mul_f32 v65, s101, v98
	v_dual_mul_f32 v74, s101, v95 :: v_dual_mul_f32 v71, s101, v92
	v_dual_mul_f32 v78, s101, v87 :: v_dual_mul_f32 v53, s101, v53
	v_dual_mul_f32 v73, s101, v88 :: v_dual_mul_f32 v80, s101, v101
	v_mul_f32_e32 v75, s101, v93
	v_mul_f32_e32 v77, s101, v89
	v_dual_mul_f32 v55, s101, v96 :: v_dual_mul_f32 v68, s101, v99
	v_mul_f32_e32 v70, s101, v94
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v35.l, 8, v38.l
	v_lshrrev_b16 v35.h, 8, v37.l
	v_and_b32_e32 v43, 0x1000000, v38
	v_and_b32_e32 v47, 0x10000, v38
	v_and_b32_e32 v39, 1, v38
	v_and_b16 v40.l, 1, v35.l
	v_and_b16 v36.l, 1, v35.h
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v35.l, 8, v42.l
	v_lshrrev_b16 v35.h, 8, v41.l
	v_and_b32_e32 v38, 0x1000000, v37
	v_and_b32_e32 v84, 0x10000, v37
	v_and_b32_e32 v37, 1, v37
	v_and_b16 v48.l, 1, v35.l
	v_and_b16 v44.l, 1, v35.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v35.l, 8, v46.l
	v_lshrrev_b16 v35.h, 8, v45.l
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v100, 0x1000000, v49
	v_cmp_eq_u32_e64 s67, 1, v37
	v_cmp_eq_u16_e64 s68, 1, v36.l
	v_and_b16 v56.l, 1, v35.l
	v_and_b16 v52.l, 1, v35.h
	v_lshrrev_b16 v35.l, 8, v50.l
	v_lshrrev_b16 v35.h, 8, v49.l
	v_cmp_eq_u16_e64 s63, 1, v40.l
	v_cmp_ne_u32_e64 s10, 0, v100
	v_and_b32_e32 v87, 1, v42
	v_and_b32_e32 v98, 0x10000, v50
	v_and_b16 v64.l, 1, v35.l
	v_and_b16 v60.l, 1, v35.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v57, s67
	v_cndmask_b32_e64 v36, 0xff800000, v58, s68
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v95, 0x10000, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v40, 0xff800000, v62, s63
	v_cndmask_b32_e64 v62, 0xff800000, v76, s10
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v97, 0x1000000, v50
	v_cmp_eq_u32_e64 s55, 1, v87
	v_cmp_eq_u16_e64 s49, 1, v52.l
	v_cmp_ne_u32_e64 s36, 0, v95
	v_cmp_ne_u32_e64 s1, 0, v98
	v_cmp_ne_u32_e64 s5, 0, v97
	v_and_b32_e32 v86, 0x10000, v42
	v_and_b32_e32 v88, 0x1000000, v41
	v_and_b32_e32 v89, 0x10000, v41
	v_cmp_ne_u32_e64 s61, 0, v47
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v47, 0xff800000, v53, s55
	v_cndmask_b32_e64 v52, 0xff800000, v65, s49
	v_cndmask_b32_e64 v53, 0xff800000, v66, s36
	v_cndmask_b32_e64 v65, 0xff800000, v79, s1
	v_cndmask_b32_e64 v66, 0xff800000, v80, s5
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v90, 1, v41
	v_and_b32_e32 v85, 0x1000000, v42
	v_and_b32_e32 v94, 0x1000000, v45
	v_and_b32_e32 v96, 1, v45
	v_and_b32_e32 v101, 0x10000, v49
	v_and_b32_e32 v107, 1, v49
	v_and_b32_e32 v91, 0x1000000, v46
	v_and_b32_e32 v92, 0x10000, v46
	v_and_b32_e32 v93, 1, v46
	v_and_b32_e32 v99, 1, v50
	v_cmp_ne_u32_e64 s65, 0, v84
	v_cmp_ne_u32_e64 s66, 0, v38
	v_cmp_ne_u32_e64 s52, 0, v86
	v_cmp_eq_u16_e64 s60, 1, v44.l
	v_cmp_ne_u32_e64 s57, 0, v89
	v_cmp_ne_u32_e64 s58, 0, v88
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v113, v65, v66
.Ltmp2:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s59, 1, v90
	v_cmp_ne_u32_e64 s53, 0, v85
	v_cmp_eq_u32_e64 s47, 1, v96
	v_cmp_ne_u32_e64 s39, 0, v94
	v_cmp_eq_u32_e64 s64, 1, v39
	v_cmp_eq_u32_e64 s12, 1, v107
	v_cmp_eq_u16_e64 s11, 1, v60.l
	v_cmp_ne_u32_e64 s8, 0, v101
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v63, s101, v63
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v59, s65
	v_cndmask_b32_e64 v38, 0xff800000, v102, s66
	v_cndmask_b32_e64 v49, 0xff800000, v33, s52
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s22, 1, v93
	v_cmp_eq_u16_e64 s25, 1, v56.l
	v_cmp_ne_u32_e64 s13, 0, v92
	v_cmp_ne_u32_e64 s17, 0, v91
	v_cmp_eq_u32_e64 s6, 1, v99
	v_cmp_eq_u16_e64 s7, 1, v64.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v33, 0, v148
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s62, 0, v43
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v104, s59
	v_cndmask_b32_e64 v44, 0xff800000, v105, s60
	v_cndmask_b32_e64 v45, 0xff800000, v51, s57
	v_cndmask_b32_e64 v46, 0xff800000, v106, s58
	v_cndmask_b32_e64 v50, 0xff800000, v54, s53
	v_cndmask_b32_e64 v51, 0xff800000, v55, s47
	v_cndmask_b32_e64 v54, 0xff800000, v68, s39
	v_cndmask_b32_e64 v39, 0xff800000, v61, s64
	v_cndmask_b32_e64 v59, 0xff800000, v73, s12
	v_cndmask_b32_e64 v60, 0xff800000, v74, s11
	v_cndmask_b32_e64 v61, 0xff800000, v75, s8
	v_cndmask_b32_e64 v41, 0xff800000, v63, s61
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s56, 1, v48.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v69, s22
	v_cndmask_b32_e64 v56, 0xff800000, v70, s25
	v_cndmask_b32_e64 v57, 0xff800000, v71, s13
	v_cndmask_b32_e64 v58, 0xff800000, v72, s17
	v_cndmask_b32_e64 v63, 0xff800000, v77, s6
	v_cndmask_b32_e64 v64, 0xff800000, v78, s7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v33, v[35:38]
	ds_store_b128 v163, v[43:46]
	ds_store_b128 v164, v[51:54]
	ds_store_b128 v165, v[59:62]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v159
	ds_load_b128 v[72:75], v159 offset:512
	ds_load_b128 v[76:79], v159 offset:1024
	ds_load_b128 v[84:87], v159 offset:1536
	v_cndmask_b32_e64 v42, 0xff800000, v103, s62
	v_cndmask_b32_e64 v48, 0xff800000, v34, s56
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v33, v[39:42]
	ds_store_b128 v163, v[47:50]
	ds_store_b128 v164, v[55:58]
	ds_store_b128 v165, v[63:66]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[88:91], v159
	ds_load_b128 v[92:95], v159 offset:1024
	ds_load_b128 v[96:99], v159 offset:512
	ds_load_b128 v[100:103], v159 offset:1536
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v110, v56, v57, v58
	v_max3_f32 v111, v59, v60, v61
	v_max_f32_e32 v112, v62, v63
.Ltmp4:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v81
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v129, s77, v129
	s_add_i32 s102, s102, 64
	s_addk_i32 s78, 0x80
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v68, v68
	v_max_f32_e32 v80, v72, v72
	v_max_f32_e32 v33, v76, v76
	v_max3_f32 v104, v77, v70, v78
.Ltmp6:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v34, v33 :: v_dual_max_f32 v34, v84, v84
	s_waitcnt lgkmcnt(3)
	v_max3_f32 v105, v71, v79, v88
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v106, v92, v89, v93
	v_max3_f32 v107, v90, v94, v91
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v108, v100, v97, v101
	v_max_f32_e32 v34, v80, v34
	v_max3_f32 v80, v85, v74, v86
	v_max3_f32 v109, v98, v102, v99
	v_max3_f32 v33, v33, v69, v104
	v_max3_f32 v104, v106, v107, v95
	v_max3_f32 v106, v75, v87, v96
	v_max3_f32 v34, v34, v73, v80
	v_max3_f32 v80, v108, v109, v103
	v_max3_f32 v107, v47, v48, v49
	v_max3_f32 v33, v33, v105, v104
	v_max3_f32 v108, v50, v51, v52
	v_max3_f32 v105, v41, v42, v43
	v_max3_f32 v34, v34, v106, v80
	v_max3_f32 v106, v44, v45, v46
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v80, v33
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v109, v53, v54, v55
.Ltmp10:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v104, v34
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v104, v104 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v104, v104, v104
	v_max_f32_e32 v33, v33, v80
	v_max_f32_e32 v80, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v104
	v_max3_f32 v104, v38, v39, v40
	v_max3_f32 v80, v80, v37, v104
	v_max3_f32 v104, v106, v107, v108
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v106, v33
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v108, v109, v110, v111
	v_max3_f32 v109, v112, v64, v113
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v107, v34
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v80, v80, v105, v104
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v80, v80, v108, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v104, v106, v106 :: v_dual_max_f32 v105, v107, v107
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v106, v80, s79, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v33, v104 :: v_dual_max_f32 v104, v82, v82
.Ltmp21:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v107, v142, v142
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v172, v81, v80, v106
	v_dual_max_f32 v106, v141, v141 :: v_dual_max_f32 v105, v83, v83
	v_max_f32_e32 v170, v104, v33
	v_dual_max_f32 v142, v107, v34 :: v_dual_sub_f32 v45, v45, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v141, v106, v33
	v_max_f32_e32 v171, v105, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v104, v82, v170
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v75, v75, v142 :: v_dual_sub_f32 v34, v76, v141
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v80, v81, v172 :: v_dual_sub_f32 v105, v83, v171
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v68, v141
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v104, v104
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v76, v78, v141 :: v_dual_sub_f32 v85, v85, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v78, v88, v141 :: v_dual_sub_f32 v87, v87, v142
	v_sub_f32_e32 v88, v94, v141
	v_sub_f32_e32 v68, v69, v141
	v_sub_f32_e32 v69, v77, v141
	v_sub_f32_e32 v94, v101, v142
	v_dual_sub_f32 v70, v70, v141 :: v_dual_sub_f32 v73, v73, v142
	v_sub_f32_e32 v46, v46, v172
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v80, 0, v80, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v82
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v93, v141
	v_sub_f32_e32 v93, v97, v142
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v33, v33
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v174, 0, v104, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v83
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v90, v141
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v71, v71, v141 :: v_dual_sub_f32 v84, v84, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v77, v79, v141 :: v_dual_sub_f32 v74, v74, v142
	v_dual_sub_f32 v79, v92, v141 :: v_dual_sub_f32 v86, v86, v142
	v_dual_sub_f32 v97, v99, v142 :: v_dual_sub_f32 v36, v36, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v109, v45
	v_exp_f32_e32 v110, v46
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v83, s28
	v_cndmask_b32_e64 v46, 0, v88, s29
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v172
	v_dual_sub_f32 v81, v89, v141 :: v_dual_sub_f32 v92, v100, v142
	v_dual_sub_f32 v90, v95, v141 :: v_dual_sub_f32 v95, v98, v142
	v_dual_sub_f32 v98, v103, v142 :: v_dual_sub_f32 v37, v37, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v99, v35
	v_exp_f32_e32 v100, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s9
	v_cndmask_b32_e64 v34, 0, v34, s14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v172
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v68, s15
	v_cndmask_b32_e64 v36, 0, v69, s16
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v89, v91, v141
	v_sub_f32_e32 v91, v96, v142
	v_dual_sub_f32 v96, v102, v142 :: v_dual_sub_f32 v49, v49, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v70, s18
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp25:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v38
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v76, s19
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v40, v172
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v35, v36
.Ltmp27:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v113, v49
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v72, s33
	v_cndmask_b32_e64 v72, 0, v86, s40
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v37, v38
.Ltmp29:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v77, s21
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v86, v33, v34
.Ltmp31:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v103, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v71, s20
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v90
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v84, s34
	v_cndmask_b32_e64 v69, 0, v73, s35
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v36, v39, v40
.Ltmp33:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v85, s37
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v47, v47, v172
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v74, s38
	v_cndmask_b32_e64 v74, 0, v87, s42
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v87, v35, v36
.Ltmp35:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v48, v172
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v105, v105
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v79, v79
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v68
.Ltmp37:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v112, v48
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v90, s31
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v69, v70
.Ltmp39:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v111, v47
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v89, s30
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v42, v42, v172 :: v_dual_add_nc_u32 v39, 16, v130
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v45, v46
.Ltmp41:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v173, 0, v105, s3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v85, v47, v48
.Ltmp43:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v106, v42
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v79, s24
.Ltmp44:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v84, v85
.Ltmp45:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v41
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v78, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v44, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v98, v98
.Ltmp46:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v37, v41, v42
.Ltmp47:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v43, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v108, v44
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v82, s27
	v_cndmask_b32_e64 v73, 0, v75, s41
	v_cndmask_b32_e64 v75, 0, v91, s43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v107, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v81, s26
	v_cndmask_b32_e64 v76, 0, v92, s44
	v_cndmask_b32_e64 v77, 0, v93, s45
	v_cndmask_b32_e64 v78, 0, v94, s46
	v_cndmask_b32_e64 v79, 0, v95, s48
	v_cndmask_b32_e64 v81, 0, v96, s50
	v_cndmask_b32_e64 v82, 0, v97, s51
	v_cndmask_b32_e64 v83, 0, v98, s54
.Ltmp48:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v38, v43, v44
.Ltmp49:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v51, v51, v172 :: v_dual_add_f32 v70, v73, v74
	v_sub_f32_e32 v55, v55, v172
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v69, v71, v72 :: v_dual_add_f32 v88, v37, v38
	v_dual_add_f32 v71, v75, v76 :: v_dual_add_f32 v72, v77, v78
	v_dual_add_f32 v73, v79, v81 :: v_dual_add_f32 v74, v82, v83
.Ltmp51:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v59, v59, v172
	v_sub_f32_e32 v63, v63, v172
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v34, 0x80000000, v130, s0
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v85, v86, v87
	v_dual_add_f32 v75, v88, v84 :: v_dual_add_nc_u32 v130, s76, v130
.Ltmp53:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v33, 16, v168
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v68
	v_dual_add_f32 v68, v69, v70 :: v_dual_add_f32 v69, v71, v72
	v_add_f32_e32 v70, v73, v74
.Ltmp55:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v50, v172
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	v_cndmask_b32_e64 v41, 0x80000000, v168, s0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v51
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v51, v69, v70
.Ltmp57:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v50
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v50, v85, v75
.Ltmp59:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v33, s0
	s_clause 0x3
	buffer_load_b128 v[33:36], v34, s[92:95], 0 offen
	buffer_load_b128 v[37:40], v39, s[92:95], 0 offen
	buffer_load_b128 v[41:44], v41, s[92:95], 0 offen
	buffer_load_b128 v[45:48], v45, s[92:95], 0 offen
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v68
.Ltmp61:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v52, v52, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v55
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v55.h, v67.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v61, v61, v172
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v49, v49, v51 :: v_dual_sub_f32 v54, v54, v172
.Ltmp63:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v52
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v61
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v51, v49
.Ltmp67:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v54
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v54, 0, v101, s65
.Ltmp68:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v61.h, v67.l
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v56, v56, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v78, v63
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v177, v50, v52
.Ltmp73:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v50, 0, v99, s67
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v175, v49, v51
.Ltmp75:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v100, s68
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v53, v53, v172
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v51.h, v67.l
	v_mov_b16_e32 v52.l, v50.h
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v176, v175
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.l, v49.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v58, v58, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v53
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v52.h, v67.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v102, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v51, 1, v51
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v56
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v49, v49
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v55.l, v53.h
	v_add3_u32 v51, v49, v51, 0x7fff
	v_mov_b16_e32 v56.l, v54.h
	v_mov_b16_e32 v56.h, v67.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v60, v60, v172
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s3
	v_and_b32_e32 v51, 1, v55
	v_cmp_o_f32_e64 s3, v50, v50
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v103, s64
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v50, 1, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v104, s63
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v75, v60
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v51, v53, v51, 0x7fff
	v_cmp_o_f32_e64 s9, v53, v53
	v_mov_b16_e32 v53.l, v55.h
	v_mov_b16_e32 v53.h, v67.l
	v_mov_b16_e32 v60.l, v56.h
	v_mov_b16_e32 v60.h, v67.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v172
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v49.l, 0x7fff, v52.h, s3
	v_add3_u32 v52, v54, v50, 0x7fff
	v_and_b32_e32 v53, 1, v53
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s9
	v_and_b32_e32 v51, 1, v60
	v_cmp_o_f32_e64 s3, v54, v54
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v54, 0, v106, s62
	v_cndmask_b32_e64 v60, 0, v105, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v53, v55, v53, 0x7fff
	v_add3_u32 v51, v56, v51, 0x7fff
	v_cmp_o_f32_e64 s9, v56, v56
	v_mov_b16_e32 v56.l, v54.h
	v_mov_b16_e32 v56.h, v67.l
	v_mov_b16_e32 v61.l, v60.h
	v_cmp_o_f32_e64 s14, v55, v55
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v64, v64, v172
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.l, 0x7fff, v52.h, s3
	v_and_b32_e32 v52, 1, v56
	v_and_b32_e32 v55, 1, v61
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s14
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v108, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v54, v54
	v_add3_u32 v52, v54, v52, 0x7fff
	v_add3_u32 v54, v60, v55, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v107, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v56.l, v53.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v110, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_cmp_o_f32_e64 s3, v60, v60
	v_mov_b16_e32 v60.l, v55.h
	v_mov_b16_e32 v60.h, v67.l
	v_and_b32_e32 v56, 1, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v62
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v109, s57
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s3
	v_and_b32_e32 v54, 1, v60
	v_add3_u32 v56, v53, v56, 0x7fff
	v_mov_b16_e32 v60.l, v61.h
	v_cmp_o_f32_e64 s3, v53, v53
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s9
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v63.h, v67.l
	v_add3_u32 v54, v55, v54, 0x7fff
	v_cmp_o_f32_e64 s9, v55, v55
	v_and_b32_e32 v60, 1, v60
	v_cndmask_b16 v53.h, 0x7fff, v56.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v112, s56
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v66, v66, v172 :: v_dual_and_b32 v55, 1, v63
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s9
	v_add3_u32 v54, v61, v60, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v111, s55
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v63.l, v56.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v57, v57, v172
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v55, v62, v55, 0x7fff
	v_cmp_o_f32_e64 s3, v61, v61
	v_cmp_o_f32_e64 s9, v62, v62
	v_mov_b16_e32 v61.l, v60.h
	v_mov_b16_e32 v61.h, v67.l
	v_and_b32_e32 v62, 1, v63
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s3
	v_cndmask_b16 v54.l, 0x7fff, v55.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v71, s53
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v55, 1, v61
	v_add3_u32 v61, v56, v62, 0x7fff
	v_cmp_o_f32_e64 s3, v56, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v113, s52
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v79, v64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v56.l, v63.h
	v_mov_b16_e32 v56.h, v67.l
	v_add3_u32 v64, v60, v55, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v61.h, s3
	v_mov_b16_e32 v61.l, v62.h
	v_mov_b16_e32 v61.h, v67.l
	v_cmp_o_f32_e64 s3, v60, v60
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v68, s49
	v_cndmask_b32_e64 v68, 0, v72, s47
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v56, 1, v56
	v_and_b32_e32 v61, 1, v61
	v_mov_b16_e32 v71.h, v67.l
	v_cmp_o_f32_e64 s9, v63, v63
	v_mov_b16_e32 v71.l, v68.h
	v_add3_u32 v56, v63, v56, 0x7fff
	v_mov_b16_e32 v63.l, v60.h
	v_mov_b16_e32 v63.h, v67.l
	v_cndmask_b16 v55.l, 0x7fff, v64.h, s3
	v_add3_u32 v61, v62, v61, 0x7fff
	v_and_b32_e32 v64, 1, v71
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v62, v62
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v70, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v64, v68, v64, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e32 v70.h, v67.l
	v_mov_b16_e32 v71.l, v62.h
	v_cmp_o_f32_e64 s14, v68, v68
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v65, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v58, v58
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v80
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s9
	v_add3_u32 v63, v60, v63, 0x7fff
	v_cmp_o_f32_e64 s9, v60, v60
	v_and_b32_e32 v68, 1, v70
	v_cndmask_b16 v56.l, 0x7fff, v61.h, s3
	v_and_b32_e32 v61, 1, v71
	v_cndmask_b16 v60.l, 0x7fff, v64.h, s14
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v74, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s9
	v_add3_u32 v63, v69, v68, 0x7fff
	v_add3_u32 v61, v62, v61, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v73, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v62, v62
	v_mov_b16_e32 v62.l, v64.h
	v_mov_b16_e32 v62.h, v67.l
	v_cmp_o_f32_e64 s9, v69, v69
	v_mov_b16_e32 v69.l, v68.h
	v_mov_b16_e32 v69.h, v67.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v62, 1, v62
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v59, v59
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v80
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s3
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s9
	v_and_b32_e32 v63, 1, v69
	v_mov_b16_e32 v69.l, v58.h
	v_add3_u32 v62, v64, v62, 0x7fff
	v_cmp_o_f32_e64 s3, v64, v64
	v_mov_b16_e32 v64.l, v57.h
	v_mov_b16_e32 v64.h, v67.l
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v30, v30, v80 :: v_dual_and_b32 v69, 1, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v63, v68, v63, 0x7fff
	v_cmp_o_f32_e64 s9, v68, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v64, 1, v64
	v_cndmask_b16 v62.h, 0x7fff, v62.h, s3
	v_add3_u32 v68, v58, v69, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_cndmask_b16 v62.l, 0x7fff, v63.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v59, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v59, v57, v64, 0x7fff
	v_cmp_o_f32_e64 s9, v57, v57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v75, s11
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v64.h, v67.l
	v_mov_b16_e32 v64.l, v58.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v63.l, 0x7fff, v59.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v77, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v63.h, 0x7fff, v68.h, s3
	v_mov_b16_e32 v68.l, v57.h
	v_mov_b16_e32 v68.h, v67.l
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v70.l, v59.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v76, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v58, v58
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v71, v58, v64, 0x7fff
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s9, v59, v59
	v_mov_b16_e32 v64.l, v69.h
	v_mov_b16_e32 v64.h, v67.l
	v_add3_u32 v68, v57, v68, 0x7fff
	v_add3_u32 v58, v59, v70, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v78, s6
	v_cndmask_b32_e64 v66, 0, v66, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v57, 1, v64
	v_cndmask_b16 v179.h, 0x7fff, v58.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v79, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v64.h, 0x7fff, v68.h, s3
	v_cndmask_b16 v64.l, 0x7fff, v71.h, s8
	v_mov_b16_e32 v68.l, v59.h
	v_mov_b16_e32 v68.h, v67.l
	v_mov_b16_e32 v70.l, v58.h
	v_mov_b16_e32 v70.h, v67.l
	v_mov_b16_e32 v71.l, v66.h
	v_mov_b16_e32 v71.h, v67.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v32, v32, v80
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e32 v72.h, v67.l
	v_and_b32_e32 v67, 1, v70
	v_and_b32_e32 v70, 1, v71
	v_cmp_o_f32_e64 s5, v59, v59
	v_add3_u32 v68, v59, v68, 0x7fff
	v_cmp_o_f32_e64 s6, v66, v66
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v18, v18, v80
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v59, v66, v70, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s1
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v57, v69, v57, 0x7fff
	v_cndmask_b16 v180.h, 0x7fff, v59.h, s6
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v59, 0, v138
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v72.l, v65.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v59, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v59, v[37:40] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[45:48] offset:4112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v59, v139 offset:512
	ds_load_u16_d16 v82, v139 offset:288
	ds_load_u16_d16 v99, v139 offset:608
	ds_load_u16_d16 v98, v139 offset:352
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v69, v69
	v_and_b32_e32 v69, 1, v72
	v_add3_u32 v67, v58, v67, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_cmp_o_f32_e64 s7, v65, v65
	v_cndmask_b16 v179.l, 0x7fff, v57.h, s1
	v_add3_u32 v58, v65, v69, 0x7fff
	v_permlanex16_b32 v57, v49, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v181.h, 0x7fff, v67.h, s3
	v_cndmask_b16 v181.l, 0x7fff, v68.h, s5
	v_permlanex16_b32 v65, v51, s79, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v180.l, 0x7fff, v58.h, s7
	v_permlanex16_b32 v58, v50, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v105, v57, v49, v133
	v_perm_b32 v106, v57, v49, v134
	v_permlanex16_b32 v66, v52, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v67, v53, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v107, v58, v50, v133
	v_perm_b32 v108, v58, v50, v134
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v57, v139
	ds_load_u16_d16 v81, v139 offset:32
	ds_load_u16_d16 v58, v139 offset:256
	ds_load_u16_d16 v182, v139 offset:64
	ds_load_u16_d16 v183, v139 offset:320
	ds_load_u16_d16 v184, v139 offset:576
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v98, v139 offset:480
	ds_load_u16_d16 v97, v139 offset:96
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v68, v54, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v55, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v56, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v60, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v61, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v62, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v63, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v64, s79, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v65, v51, v133
	v_perm_b32 v110, v65, v51, v134
	v_perm_b32 v111, v66, v52, v133
	v_perm_b32 v112, v66, v52, v134
	v_perm_b32 v33, v67, v53, v133
	v_perm_b32 v34, v67, v53, v134
	v_perm_b32 v35, v68, v54, v133
	v_perm_b32 v36, v68, v54, v134
	v_perm_b32 v37, v69, v55, v133
	v_perm_b32 v38, v69, v55, v134
	v_perm_b32 v39, v70, v56, v133
	v_perm_b32 v40, v70, v56, v134
	v_perm_b32 v49, v71, v60, v133
	v_perm_b32 v50, v71, v60, v134
	v_perm_b32 v51, v72, v61, v133
	v_perm_b32 v52, v72, v61, v134
	v_perm_b32 v53, v73, v62, v133
	v_perm_b32 v54, v73, v62, v134
	v_perm_b32 v55, v74, v63, v133
	v_perm_b32 v56, v74, v63, v134
	v_perm_b32 v41, v42, v64, v133
	v_perm_b32 v42, v42, v64, v134
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v139 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v81, v139 offset:160
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v182, v139 offset:192
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v97, v139 offset:224
	ds_load_u16_d16_hi v58, v139 offset:384
	ds_load_u16_d16_hi v59, v139 offset:640
	ds_load_u16_d16 v60, v139 offset:768
	ds_load_u16_d16_hi v82, v139 offset:416
	ds_load_u16_d16 v185, v139 offset:832
	ds_load_u16_d16_hi v184, v139 offset:704
	ds_load_u16_d16 v83, v139 offset:544
	ds_load_u16_d16_hi v183, v139 offset:448
	ds_load_u16_d16 v186, v139 offset:1088
	ds_load_u16_d16 v61, v139 offset:1024
	ds_load_u16_d16 v84, v139 offset:800
	ds_load_u16_d16 v100, v139 offset:864
	ds_load_u16_d16 v187, v139 offset:1344
	ds_load_u16_d16 v62, v139 offset:1280
	ds_load_u16_d16 v85, v139 offset:1056
	ds_load_u16_d16 v101, v139 offset:1120
	ds_load_u16_d16 v188, v139 offset:1600
	ds_load_u16_d16 v63, v139 offset:1536
	ds_load_u16_d16 v86, v139 offset:1312
	ds_load_u16_d16 v102, v139 offset:1376
	ds_load_u16_d16 v64, v139 offset:1792
	ds_load_u16_d16 v87, v139 offset:1568
	ds_load_u16_d16 v189, v139 offset:1856
	ds_load_u16_d16 v103, v139 offset:1632
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v185, v139 offset:960
	ds_load_u16_d16_hi v60, v139 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v83, v139 offset:672
	ds_load_u16_d16_hi v99, v139 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v186, v139 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v139 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v84, v139 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v100, v139 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v187, v139 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v62, v139 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v139 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v101, v139 offset:1248
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v188, v139 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v139 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v86, v139 offset:1440
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v102, v139 offset:1504
	ds_load_u16_d16 v65, v139 offset:2112
	ds_load_u16_d16 v113, v139 offset:2048
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v64, v139 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v87, v139 offset:1696
	ds_load_u16_d16 v88, v139 offset:1824
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v189, v139 offset:1984
	ds_load_u16_d16 v104, v139 offset:1888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v103, v139 offset:1760
	ds_load_u16_d16 v66, v139 offset:2368
	ds_load_u16_d16 v114, v139 offset:2304
	ds_load_u16_d16 v89, v139 offset:2080
	ds_load_u16_d16 v73, v139 offset:2144
	ds_load_u16_d16 v67, v139 offset:2624
	ds_load_u16_d16 v115, v139 offset:2560
	ds_load_u16_d16 v90, v139 offset:2336
	ds_load_u16_d16 v74, v139 offset:2400
	ds_load_u16_d16 v68, v139 offset:2880
	ds_load_u16_d16 v116, v139 offset:2816
	ds_load_u16_d16 v91, v139 offset:2592
	ds_load_u16_d16 v75, v139 offset:2656
	ds_load_u16_d16 v69, v139 offset:3136
	ds_load_u16_d16 v117, v139 offset:3072
	ds_load_u16_d16 v92, v139 offset:2848
	ds_load_u16_d16 v76, v139 offset:2912
	ds_load_u16_d16 v118, v139 offset:3328
	ds_load_u16_d16 v93, v139 offset:3104
	ds_load_u16_d16 v70, v139 offset:3392
	ds_load_u16_d16 v77, v139 offset:3168
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v178, v177
.Ltmp79:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v80
	v_mul_f32_e32 v27, v27, v80
	v_mul_f32_e32 v29, v29, v80
	v_mul_f32_e32 v31, v31, v80
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v80
	v_mul_f32_e32 v17, v17, v80
	v_mul_f32_e32 v19, v19, v80
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[105:112], v[25:32]
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v177, v178
.Ltmp83:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v21, v21, v80
	v_mul_f32_e32 v22, v22, v80
	v_mul_f32_e32 v23, v23, v80
	v_mul_f32_e32 v24, v24, v80
	v_mul_f32_e32 v9, v9, v80
	v_mul_f32_e32 v10, v10, v80
	v_mul_f32_e32 v11, v11, v80
	v_mul_f32_e32 v13, v13, v80
	v_mul_f32_e32 v14, v14, v80
	v_mul_f32_e32 v15, v15, v80
	v_mul_f32_e32 v16, v16, v80
	v_mul_f32_e32 v1, v1, v80
	v_mul_f32_e32 v2, v2, v80
	v_mul_f32_e32 v3, v3, v80
	v_mul_f32_e32 v4, v4, v80
	v_mul_f32_e32 v5, v5, v80
	v_mul_f32_e32 v6, v6, v80
	v_mul_f32_e32 v7, v7, v80
	v_mul_f32_e32 v8, v8, v80
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v65, v139 offset:2240
	ds_load_u16_d16_hi v113, v139 offset:2176
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v88, v139 offset:1952
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v104, v139 offset:2016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v139 offset:2496
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v114, v139 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v89, v139 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v73, v139 offset:2272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v67, v139 offset:2752
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v139 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v90, v139 offset:2464
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v74, v139 offset:2528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v68, v139 offset:3008
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v116, v139 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v91, v139 offset:2720
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v75, v139 offset:2784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v69, v139 offset:3264
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v117, v139 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v92, v139 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v76, v139 offset:3040
	ds_load_u16_d16 v71, v139 offset:3648
	ds_load_u16_d16 v119, v139 offset:3584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v139 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v93, v139 offset:3232
	ds_load_u16_d16 v94, v139 offset:3360
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v70, v139 offset:3520
	ds_load_u16_d16 v78, v139 offset:3424
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v77, v139 offset:3296
	ds_load_u16_d16 v72, v139 offset:3904
	ds_load_u16_d16 v120, v139 offset:3840
	ds_load_u16_d16 v95, v139 offset:3616
	ds_load_u16_d16 v79, v139 offset:3680
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v57, v155, v174 :: v_dual_mul_f32 v12, v12, v80
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v190, v139 offset:4160
	ds_load_u16_d16 v198, v139 offset:4096
	ds_load_u16_d16 v96, v139 offset:3872
	ds_load_u16_d16 v80, v139 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(33)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[105:112], v[17:24]
	s_waitcnt lgkmcnt(32)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[105:112], v[1:8]
	v_mov_b32_e32 v155, v57
	v_wmma_f32_16x16x16_bf16 v[9:16], v[182:189], v[105:112], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v191, v139 offset:4416
	ds_load_u16_d16 v199, v139 offset:4352
	ds_load_u16_d16 v81, v139 offset:4128
	ds_load_u16_d16 v182, v139 offset:4192
	ds_load_u16_d16 v192, v139 offset:4672
	ds_load_u16_d16 v200, v139 offset:4608
	ds_load_u16_d16 v82, v139 offset:4384
	ds_load_u16_d16 v183, v139 offset:4448
	ds_load_u16_d16 v201, v139 offset:4864
	ds_load_u16_d16 v83, v139 offset:4640
	ds_load_u16_d16 v193, v139 offset:4928
	ds_load_u16_d16 v184, v139 offset:4704
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v71, v139 offset:3776
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v119, v139 offset:3712
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v94, v139 offset:3488
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v78, v139 offset:3552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v72, v139 offset:4032
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v120, v139 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v95, v139 offset:3744
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v79, v139 offset:3808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v190, v139 offset:4288
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v198, v139 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v96, v139 offset:4000
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v80, v139 offset:4064
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v191, v139 offset:4544
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v199, v139 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v81, v139 offset:4256
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v182, v139 offset:4320
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v192, v139 offset:4800
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v200, v139 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v82, v139 offset:4512
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v183, v139 offset:4576
	ds_load_u16_d16 v194, v139 offset:5184
	ds_load_u16_d16 v202, v139 offset:5120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v201, v139 offset:4992
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v83, v139 offset:4768
	ds_load_u16_d16 v84, v139 offset:4896
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v193, v139 offset:5056
	ds_load_u16_d16 v185, v139 offset:4960
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v184, v139 offset:4832
	ds_load_u16_d16 v195, v139 offset:5440
	ds_load_u16_d16 v203, v139 offset:5376
	ds_load_u16_d16 v85, v139 offset:5152
	ds_load_u16_d16 v186, v139 offset:5216
	ds_load_u16_d16 v196, v139 offset:5696
	ds_load_u16_d16 v204, v139 offset:5632
	ds_load_u16_d16 v86, v139 offset:5408
	ds_load_u16_d16 v187, v139 offset:5472
	ds_load_u16_d16 v197, v139 offset:5952
	ds_load_u16_d16 v205, v139 offset:5888
	ds_load_u16_d16 v87, v139 offset:5664
	ds_load_u16_d16 v188, v139 offset:5728
	ds_load_u16_d16 v97, v139 offset:6208
	ds_load_u16_d16 v105, v139 offset:6144
	ds_load_u16_d16 v88, v139 offset:5920
	ds_load_u16_d16 v189, v139 offset:5984
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v44, v179, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v181, s79, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v180, s79, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(38)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[113:120], v[33:40], v[25:32]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v106, v139 offset:6400
	ds_load_u16_d16 v113, v139 offset:6176
	ds_load_u16_d16 v98, v139 offset:6464
	ds_load_u16_d16 v206, v139 offset:6240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v194, v139 offset:5312
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v202, v139 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v84, v139 offset:5024
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v185, v139 offset:5088
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v195, v139 offset:5568
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v203, v139 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v85, v139 offset:5280
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v186, v139 offset:5344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v196, v139 offset:5824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v204, v139 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v86, v139 offset:5536
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v187, v139 offset:5600
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v197, v139 offset:6080
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v205, v139 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v87, v139 offset:5792
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v188, v139 offset:5856
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v97, v139 offset:6336
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v105, v139 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v88, v139 offset:6048
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v189, v139 offset:6112
	ds_load_u16_d16 v99, v139 offset:6720
	ds_load_u16_d16 v107, v139 offset:6656
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v106, v139 offset:6528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v113, v139 offset:6304
	ds_load_u16_d16 v114, v139 offset:6432
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v98, v139 offset:6592
	ds_load_u16_d16 v207, v139 offset:6496
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v206, v139 offset:6368
	ds_load_u16_d16 v100, v139 offset:6976
	ds_load_u16_d16 v108, v139 offset:6912
	ds_load_u16_d16 v115, v139 offset:6688
	ds_load_u16_d16 v208, v139 offset:6752
	ds_load_u16_d16 v101, v139 offset:7232
	ds_load_u16_d16 v109, v139 offset:7168
	ds_load_u16_d16 v116, v139 offset:6944
	ds_load_u16_d16 v209, v139 offset:7008
	ds_load_u16_d16 v102, v139 offset:7488
	ds_load_u16_d16 v110, v139 offset:7424
	ds_load_u16_d16 v117, v139 offset:7200
	ds_load_u16_d16 v210, v139 offset:7264
	ds_load_u16_d16 v103, v139 offset:7744
	ds_load_u16_d16 v111, v139 offset:7680
	ds_load_u16_d16 v118, v139 offset:7456
	ds_load_u16_d16 v211, v139 offset:7520
	ds_load_u16_d16 v104, v139 offset:8000
	ds_load_u16_d16 v112, v139 offset:7936
	ds_load_u16_d16 v119, v139 offset:7712
	ds_load_u16_d16 v212, v139 offset:7776
	ds_load_u16_d16 v120, v139 offset:7968
	ds_load_u16_d16 v213, v139 offset:8032
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v99, v139 offset:6848
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v107, v139 offset:6784
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v114, v139 offset:6560
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v207, v139 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v100, v139 offset:7104
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v139 offset:7040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v115, v139 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v208, v139 offset:6880
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v101, v139 offset:7360
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v109, v139 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v116, v139 offset:7072
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v209, v139 offset:7136
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v102, v139 offset:7616
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v110, v139 offset:7552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v117, v139 offset:7328
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v210, v139 offset:7392
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v103, v139 offset:7872
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v111, v139 offset:7808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v139 offset:7584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v211, v139 offset:7648
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v104, v139 offset:8128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v112, v139 offset:8064
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v119, v139 offset:7840
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v212, v139 offset:7904
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v120, v139 offset:8096
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v213, v139 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[33:40], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[33:40], v[1:8]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v58, v175, v176
.Ltmp87:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v43, v44, v179, v133
	v_perm_b32 v44, v44, v179, v134
	v_perm_b32 v45, v46, v181, v133
	v_perm_b32 v46, v46, v181, v134
	v_perm_b32 v47, v48, v180, v133
	v_perm_b32 v48, v48, v180, v134
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[198:205], v[49:56], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[49:56], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[190:197], v[49:56], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[182:189], v[49:56], v[1:8]
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v58, v154, v173
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[41:48], v[25:32]
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v168, s76, v168
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[41:48], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[206:213], v[41:48], v[1:8]
	v_dual_mov_b32 v81, v172 :: v_dual_mov_b32 v154, v58
	v_dual_mov_b32 v82, v170 :: v_dual_mov_b32 v83, v171
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s1, s91, s102
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, s100
	s_cbranch_scc0 .LBB0_70
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v33, 0x80000000, v129, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v37, s78, v140
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v65, s80 :: v_dual_mov_b32 v68, s83
	v_mov_b32_e32 v66, s81
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[33:36], v33, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v67, s82 :: v_dual_mov_b32 v70, s85
	v_dual_mov_b32 v69, s84 :: v_dual_mov_b32 v72, s87
	v_mov_b32_e32 v71, s86
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v144, v[33:34]
	ds_store_b64 v149, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v115, v37, s[96:99], 0 offen
	buffer_load_u16 v114, v37, s[96:99], 0 offen offset:4
	buffer_load_u16 v112, v37, s[96:99], 0 offen offset:8
	buffer_load_u16 v110, v37, s[96:99], 0 offen offset:12
	buffer_load_u16 v108, v37, s[96:99], 0 offen offset:16
	buffer_load_u16 v106, v37, s[96:99], 0 offen offset:20
	buffer_load_u16 v103, v37, s[96:99], 0 offen offset:24
	buffer_load_u16 v100, v37, s[96:99], 0 offen offset:28
	buffer_load_u16 v113, v37, s[96:99], 0 offen offset:32
	buffer_load_u16 v111, v37, s[96:99], 0 offen offset:36
	buffer_load_u16 v109, v37, s[96:99], 0 offen offset:40
	buffer_load_u16 v107, v37, s[96:99], 0 offen offset:44
	buffer_load_u16 v104, v37, s[96:99], 0 offen offset:48
	buffer_load_u16 v101, v37, s[96:99], 0 offen offset:52
	buffer_load_u16 v98, v37, s[96:99], 0 offen offset:56
	buffer_load_u16 v96, v37, s[96:99], 0 offen offset:60
	buffer_load_u16 v105, v37, s[96:99], 0 offen offset:64
	buffer_load_u16 v102, v37, s[96:99], 0 offen offset:68
	buffer_load_u16 v99, v37, s[96:99], 0 offen offset:72
	buffer_load_u16 v97, v37, s[96:99], 0 offen offset:76
	buffer_load_u16 v94, v37, s[96:99], 0 offen offset:80
	buffer_load_u16 v92, v37, s[96:99], 0 offen offset:84
	buffer_load_u16 v90, v37, s[96:99], 0 offen offset:88
	buffer_load_u16 v88, v37, s[96:99], 0 offen offset:92
	buffer_load_u16 v95, v37, s[96:99], 0 offen offset:96
	buffer_load_u16 v93, v37, s[96:99], 0 offen offset:100
	buffer_load_u16 v91, v37, s[96:99], 0 offen offset:104
	buffer_load_u16 v89, v37, s[96:99], 0 offen offset:108
	buffer_load_u16 v87, v37, s[96:99], 0 offen offset:112
	buffer_load_u16 v86, v37, s[96:99], 0 offen offset:116
	buffer_load_u16 v85, v37, s[96:99], 0 offen offset:120
	buffer_load_u16 v84, v37, s[96:99], 0 offen offset:124
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v150 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v150 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v156 offset1:1
	ds_load_2addr_stride64_b64 v[116:119], v156 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[170:173], v157 offset1:1
	ds_load_2addr_stride64_b64 v[174:177], v157 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v158 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v158 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[127:128], v[65:72] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v74, s102, v143
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[127:128], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[127:128], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[127:128], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[125:126], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[79:80], v[125:126], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[125:126], v[33:40] neg_lo:[1,1,0]
	v_mov_b16_e32 v65.l, 0
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[170:171], v[123:124], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[172:173], v[123:124], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[174:175], v[123:124], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[176:177], v[123:124], v[33:40] neg_lo:[1,1,0]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v74, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v74, v146
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[178:179], v[121:122], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[180:181], v[121:122], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[182:183], v[121:122], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[184:185], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v73, s102, v166
	v_mov_b16_e32 v65.h, v65.l
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s9, vcc_lo, s1
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_ashrrev_i32_e32 v67, 31, v73
	v_add_co_u32 v66, s1, s70, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v67, null, s71, v67, s1
	.loc	1 681 34                        ; attention.py:681:34
	global_load_d16_hi_u8 v65, v[66:67], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v76, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v76, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v76, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s14, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s14
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v66, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, s1, s70, v66
	v_add_co_ci_u32_e64 v67, null, s71, v67, s1
	global_load_d16_u8 v65, v[66:67], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v75, 2, v74
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v75, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v75, v146
	v_mov_b16_e32 v66.l, v66.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s15
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v67, 2, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_u8 v66, v[67:68], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v78, 3, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v78, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v78, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s16, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s16
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v67, 3, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, s1, s70, v67
	v_add_co_ci_u32_e64 v68, null, s71, v68, s1
	global_load_d16_hi_u8 v66, v[67:68], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v77, 4, v74
	v_mov_b16_e32 v67.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v77, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v77, v146
	v_mov_b16_e32 v67.h, v67.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v68, 4, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_hi_u8 v67, v[68:69], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v80, 5, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v80, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v80, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s19, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s19
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v68, 5, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, s1, s70, v68
	v_add_co_ci_u32_e64 v69, null, s71, v69, s1
	global_load_d16_u8 v67, v[68:69], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v79, 6, v74
	v_mov_b16_e32 v68.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v79, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v79, v146
	v_mov_b16_e32 v68.h, v68.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s20
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v69, 6, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_hi_u8 v68, v[69:70], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v117, 7, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v117, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v117, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s21, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v69, 7, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, s1, s70, v69
	v_add_co_ci_u32_e64 v70, null, s71, v70, s1
	global_load_d16_u8 v68, v[69:70], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v116, 8, v74
	v_mov_b16_e32 v69.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v116, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v116, v146
	v_mov_b16_e32 v69.h, v69.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s23
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v70, 8, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_hi_u8 v69, v[70:71], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v119, 9, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v119, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v119, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s24, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s24
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v70, 9, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v71, 31, v70
	v_add_co_u32 v70, s1, s70, v70
	v_add_co_ci_u32_e64 v71, null, s71, v71, s1
	global_load_d16_u8 v69, v[70:71], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v118, 10, v74
	v_mov_b16_e32 v70.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v118, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v118, v146
	v_mov_b16_e32 v70.h, v70.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v71, 10, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v72, 31, v71
	v_add_co_u32 v71, s1, s70, v71
	v_add_co_ci_u32_e64 v72, null, s71, v72, s1
	global_load_d16_hi_u8 v70, v[71:72], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v170, 11, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v170, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v170, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s27, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v71, 11, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v72, 31, v71
	v_add_co_u32 v71, s1, s70, v71
	v_add_co_ci_u32_e64 v72, null, s71, v72, s1
	global_load_d16_u8 v70, v[71:72], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v120, 12, v74
	v_mov_b16_e32 v71.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v120, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v120, v146
	v_mov_b16_e32 v71.h, v71.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s28
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v72, 12, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v172, 31, v72
	v_add_co_u32 v171, s1, s70, v72
	v_add_co_ci_u32_e64 v172, null, s71, v172, s1
	global_load_d16_hi_u8 v71, v[171:172], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v172, 13, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v172, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v172, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s37, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s37
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v72, 13, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v171, 31, v72
	v_add_co_u32 v173, s1, s70, v72
	v_add_co_ci_u32_e64 v174, null, s71, v171, s1
	global_load_d16_u8 v71, v[173:174], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v171, 14, v74
	v_mov_b16_e32 v72.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v171, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v171, v146
	v_mov_b16_e32 v72.h, v72.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s40, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s40
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v173, 14, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v174, 31, v173
	v_add_co_u32 v173, s1, s70, v173
	v_add_co_ci_u32_e64 v174, null, s71, v174, s1
	global_load_d16_hi_u8 v72, v[173:174], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 633 32 is_stmt 1              ; attention.py:633:32
	v_add_nc_u32_e32 v173, 15, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v173, v145
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v173, v146
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s48, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s48
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v73, 15, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v175, 31, v73
	v_add_co_u32 v174, s1, s70, v73
	v_add_co_ci_u32_e64 v175, null, s71, v175, s1
	global_load_d16_u8 v72, v[174:175], off
.LBB0_38:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v73.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v74, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v74, v153
	v_add_nc_u32_e32 v174, s102, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v73.h, v73.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s50, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s50
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_6 Depth=1
	v_ashrrev_i32_e32 v74, 31, v174
	v_add_co_u32 v175, s1, s70, v174
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v176, null, s71, v74, s1
	global_load_d16_hi_u8 v73, v[175:176], off
.LBB0_40:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v76, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v76, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s53, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s53
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v74, 1, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v76, 31, v74
	v_add_co_u32 v175, s1, s70, v74
	v_add_co_ci_u32_e64 v176, null, s71, v76, s1
	global_load_d16_u8 v73, v[175:176], off
.LBB0_42:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v74.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v75, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v75, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v74.h, v74.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s54, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s54
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, 2, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s70, v75
	v_add_co_ci_u32_e64 v76, null, s71, v76, s1
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_44:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v78, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v78, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s55, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s55
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, 3, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s70, v75
	v_add_co_ci_u32_e64 v76, null, s71, v76, s1
	global_load_d16_u8 v74, v[75:76], off
.LBB0_46:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v75.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v77, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v77, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s56, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s56
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, 4, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s1, s70, v76
	v_add_co_ci_u32_e64 v77, null, s71, v77, s1
	global_load_d16_hi_u8 v75, v[76:77], off
.LBB0_48:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v80, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v80, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s57, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s57
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, 5, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, s1, s70, v76
	v_add_co_ci_u32_e64 v77, null, s71, v77, s1
	global_load_d16_u8 v75, v[76:77], off
.LBB0_50:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v76.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v79, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v79, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v77.l, v76.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s58, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s58
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v77, 6, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v78, 31, v77
	v_add_co_u32 v77, s1, s70, v77
	v_add_co_ci_u32_e64 v78, null, s71, v78, s1
	global_load_d16_u8 v77, v[77:78], off
.LBB0_52:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v117, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v117, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s59, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s59
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, 7, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v79, 31, v76
	v_add_co_u32 v78, s1, s70, v76
	v_add_co_ci_u32_e64 v79, null, s71, v79, s1
	global_load_d16_hi_u8 v76, v[78:79], off
.LBB0_54:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v77.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v116, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v116, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v78.l, v77.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s60, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s60
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v78, 8, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v79, 31, v78
	v_add_co_u32 v78, s1, s70, v78
	v_add_co_ci_u32_e64 v79, null, s71, v79, s1
	global_load_d16_u8 v78, v[78:79], off
.LBB0_56:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v119, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v119, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s61, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s61
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v79, 9, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v80, 31, v79
	v_add_co_u32 v79, s1, s70, v79
	v_add_co_ci_u32_e64 v80, null, s71, v80, s1
	global_load_d16_hi_u8 v77, v[79:80], off
.LBB0_58:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v78.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v118, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v118, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v79.l, v78.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s62, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s62
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v79, 10, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v80, 31, v79
	v_add_co_u32 v79, s1, s70, v79
	v_add_co_ci_u32_e64 v80, null, s71, v80, s1
	global_load_d16_u8 v79, v[79:80], off
.LBB0_60:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v170, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v170, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s63, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s63
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v80, 11, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v117, 31, v80
	v_add_co_u32 v116, s1, s70, v80
	v_add_co_ci_u32_e64 v117, null, s71, v117, s1
	global_load_d16_hi_u8 v78, v[116:117], off
.LBB0_62:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v79.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v120, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v120, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v80.l, v79.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s64, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s64
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v80, 12, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v117, 31, v80
	v_add_co_u32 v116, s1, s70, v80
	v_add_co_ci_u32_e64 v117, null, s71, v117, s1
	global_load_d16_u8 v80, v[116:117], off
.LBB0_64:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v172, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v172, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s65, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s65
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v116, 13, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v117, 31, v116
	v_add_co_u32 v116, s1, s70, v116
	v_add_co_ci_u32_e64 v117, null, s71, v117, s1
	global_load_d16_hi_u8 v79, v[116:117], off
.LBB0_66:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v76.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v171, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v171, v153
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v80.h, v76.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s66, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s66
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v116, 14, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v117, 31, v116
	v_add_co_u32 v116, s1, s70, v116
	v_add_co_ci_u32_e64 v117, null, s71, v117, s1
	global_load_d16_hi_u8 v80, v[116:117], off
.LBB0_68:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v173, v152
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v173, v153
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s67, vcc_lo, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s67
	s_cbranch_execz .LBB0_5
; %bb.69:                               ;   in Loop: Header=BB0_6 Depth=1
	v_add_nc_u32_e32 v116, 15, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v117, 31, v116
	v_add_co_u32 v116, s1, s70, v116
	v_add_co_ci_u32_e64 v117, null, s71, v117, s1
	global_load_d16_u8 v76, v[116:117], off
	s_branch .LBB0_5
.LBB0_70:                               ; %Flow
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_dual_mov_b32 v48, v136 :: v_dual_mov_b32 v49, v137
.LBB0_71:                               ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 0x80, v49
	v_add_nc_u32_e32 v34, 0, v48
	v_lshl_add_u32 v35, v135, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s89, s89, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	ds_store_b64 v35, v[57:58]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s91, 0x31027000
	ds_load_b32 v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v39, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fmac_f32_e32 v48, v57, v48
	v_mul_f32_e32 v54, v34, v45
	v_fma_f32 v59, -v43, v50, 1.0
	v_fmac_f32_e32 v49, v58, v49
	v_dual_mul_f32 v55, v36, v46 :: v_dual_mul_f32 v56, v38, v47
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	v_fmac_f32_e32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v44
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_rcp_f32_e32 v37, v52
	v_div_fixup_f32 v26, v34, v0, v26
	v_mul_f32_e32 v34, v51, v50
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_fixup_f32 v28, v33, v0, v28
	v_fma_f32 v33, -v43, v34, v51
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fma_f32 v38, -v52, v37, 1.0
	v_rcp_f32_e32 v40, v36
	v_fmac_f32_e32 v62, v58, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v33, v50 :: v_dual_mul_f32 v33, v35, v53
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v43, v38, v37
	v_div_scale_f32 v46, null, v0, v0, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v45, v40
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_scale_f32 v45, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v35, v45, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v39, v0, v29
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v42, null, v0, v0, v19
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v44, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v38, v40
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v37, v43
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v43, -v47, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v45, v35, 1.0
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v36, v39
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v33, -v45, v36, v41
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_scale_f32 v48, null, v0, v0, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v34, v40
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v42, v36, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v46, -v45, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v46, v35
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s3, v10, v0, v10
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v49, v40, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v36, v50 :: v_dual_mul_f32 v44, v46, v43
	v_div_fmas_f32 v35, v38, v35, v49
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v34, -v42, v44, v46
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fixup_f32 v10, v35, v0, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v42, v44, v46
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_div_fmas_f32 v36, v36, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_mul_f32_e32 v39, v35, v42
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v44, v41, v44
	v_fma_f32 v37, -v40, v39, v35
	v_div_scale_f32 v36, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v45, 1.0
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v33, v45
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_rcp_f32_e32 v47, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v48, s4, v1, v0, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v41, v47, 1.0
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_fmac_f32_e32 v47, v49, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v49, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v44, v40
	v_fma_f32 v33, -v43, v42, v33
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v46, v50, 1.0
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fixup_f32 v15, v35, v0, v15
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_mul_f32_e32 v51, v45, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v34, v49, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v51, v40, v39
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s4, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cmp_o_f32_e64 s4, v21, v21
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v131
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v27, s69
	v_cndmask_b32_e64 v6, v17, v25, s69
	v_cndmask_b32_e64 v7, v25, v17, s69
	v_cndmask_b32_e64 v13, v28, v20, s69
	v_cndmask_b32_e64 v16, v12, v9, s69
	v_cndmask_b32_e64 v9, v9, v12, s69
	v_cndmask_b32_e64 v12, v11, v10, s69
	v_cndmask_b32_e64 v10, v10, v11, s69
	v_cndmask_b32_e64 v17, v0, v1, s69
	v_cndmask_b32_e64 v0, v1, v0, s69
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s90, v132
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v18, v19, s69
	v_cndmask_b32_e64 v1, v2, v3, s69
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v19, v18, s69
	v_cndmask_b32_e64 v18, v3, v2, s69
	v_permlanex16_b32 v2, v5, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s69
	v_cndmask_b32_e64 v8, v20, v28, s69
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v3, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s90, v33
	v_cmp_gt_i32_e64 s3, s90, v32
	v_cmp_gt_i32_e64 s0, s90, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v133
	v_perm_b32 v11, v11, v12, v134
	v_perm_b32 v12, v13, v17, v133
	v_perm_b32 v13, v13, v17, v134
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v133
	v_perm_b32 v1, v2, v4, v134
	v_perm_b32 v4, v5, v8, v133
	v_perm_b32 v5, v5, v8, v134
	v_perm_b32 v8, v9, v16, v133
	v_perm_b32 v9, v9, v16, v134
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s90, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v133
	v_perm_b32 v3, v3, v6, v134
	v_perm_b32 v6, v7, v14, v133
	v_perm_b32 v7, v7, v14, v134
	v_perm_b32 v14, v15, v18, v133
	v_perm_b32 v15, v15, v18, v134
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_mov_b32 s90, 0x7ffffffe
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[88:91], 0 offen
	buffer_store_b128 v[4:7], v17, s[88:91], 0 offen
	buffer_store_b128 v[8:11], v18, s[88:91], 0 offen
	buffer_store_b128 v[12:15], v19, s[88:91], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp88:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 103
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 214
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19944
; TotalNumSgprs: 105
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 105
; NumVGPRsForWavesPerEU: 214
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
