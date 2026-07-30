	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x84
	s_load_b32 s82, s[0:1], 0x60
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_and_b32_e32 v38, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s2, s2, 6
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v38
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s4, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s2, v2
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s2, s4
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v35, 0x60, v0
	v_and_b32_e32 v66, 15, v0
	v_and_b32_e32 v65, 16, v0
	v_lshlrev_b32_e32 v47, 2, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v6, v37, 30, v33
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[126:127], null, s82, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s82, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s13, s13, 0xffff
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s9, s2, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s2, s6
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s82, s8, v[126:127]
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s9, s9, s5
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s5
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s9, s9, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s10, s10, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s9, s9, 0x800
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s9, s9, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s61, 0, v65
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s11, s9, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s83, s10, 0x7fffffc0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[2:5], v1, s[12:15], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v35
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s11, s11, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s100, s9, s11
	s_mov_b32 s9, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v66
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s100, s100, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s100
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s2, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, 0x800, v7
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v39, v6, v2
	ds_bpermute_b32 v40, v6, v3
	ds_bpermute_b32 v41, v6, v4
	ds_bpermute_b32 v45, v6, v5
	ds_bpermute_b32 v42, v8, v2
	ds_bpermute_b32 v43, v8, v3
	ds_bpermute_b32 v44, v8, v4
	ds_bpermute_b32 v46, v8, v5
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b32_e32 v2, 0x5410
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v34, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x1054, v2, s61
	v_cndmask_b32_e64 v3, 0x3276, v3, s61
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
	v_and_b32_e32 v141, 0x5040504, v2
	v_and_b32_e32 v144, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr144
.LBB0_3:                                ; %Flow398
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s71, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v36, 0x78, v0
	v_or_b32_e32 v63, s8, v1
	s_and_not1_b32 vcc_lo, exec_lo, s9
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
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v138, v8
	v_mov_b32_e32 v136, v8
	v_mov_b32_e32 v137, v8
	v_mov_b32_e32 v135, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v130, v40, v43, s61
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_writelane_b32 v255, s16, 0
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	v_dual_mov_b32 v11, 0x5410 :: v_dual_and_b32 v2, 12, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v134, v43, v40, s61
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 3, v0
	v_and_b32_e32 v3, 0x7c, v47
	v_bfe_i32 v6, v0, 5, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v36, 3, v36
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v129, v39, v42, s61
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s85, s13, 0xffff
	s_mov_b32 s84, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v133, v42, v39, s61
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v34, v1, s[84:87], 0 offen
	v_dual_mov_b32 v70, 0xff800000 :: v_dual_lshlrev_b32 v39, 2, v35
	v_lshrrev_b32_e32 v42, 3, v35
	v_dual_mov_b32 v64, 0xff800000 :: v_dual_and_b32 v43, 28, v0
	v_bfe_i32 v38, v0, 3, 1
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v51, 5, v40
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v53, 0x2040, v6
	v_cndmask_b32_e64 v56, 0x1054, v11, s61
	v_mov_b32_e32 v18, v17
	v_lshl_or_b32 v35, v35, 4, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v114, 0xff800000 :: v_dual_and_b32 v1, 7, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v128, v45, v46, s61
	v_cndmask_b32_e64 v132, v46, v45, s61
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_lshlrev_b32 v13, 4, v0
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_and_b32 v45, 24, v0
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v0
	v_cndmask_b32_e64 v5, 0x1020, 0, vcc_lo
	v_bfe_i32 v8, v0, 2, 1
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v9, 8, v0
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_lshlrev_b32 v10, 6, v65
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v127, v41, v44, s61
	v_cndmask_b32_e64 v131, v44, v41, s61
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v7, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v44, s2, v36
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	v_xor_b32_e32 v163, v35, v42
	v_lshl_or_b32 v35, v43, 7, v51
	v_and_or_b32 v38, 0x1020, v38, v53
	v_lshl_or_b32 v42, v56, 8, v56
	s_sub_i32 s1, s3, s1
	scratch_store_b32 off, v63, off         ; 4-byte Folded Spill
	v_dual_mov_b32 v63, 0xff800000 :: v_dual_lshlrev_b32 v46, 1, v2
	v_xor_b32_e32 v154, v13, v45
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v47, 4, v1
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v48, 5, v2
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v52, 0x310, v4
	v_and_or_b32 v54, 0x2040, v8, v5
	v_lshl_or_b32 v55, v9, 4, v10
	v_cndmask_b32_e64 v57, 0x3276, v12, s61
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s13, s1, 0x10007
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v37, 0x80, v37
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v139, 3, v1
	v_lshl_or_b32 v49, v45, 1, v39
	v_lshl_add_u32 v58, v7, 9, 0
	v_mov_b32_e32 v12, v17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v59, 16, v44
	v_or_b32_e32 v60, 32, v44
	v_or_b32_e32 v61, 48, v44
	v_xor_b32_e32 v38, v38, v51
	v_or3_b32 v169, v35, v39, v43
	v_and_b32_e32 v39, 0x540054, v42
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s13, s1, s13
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v35, s19, v36
	v_cndmask_b32_e64 v41, 0x2040, 0, s61
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v50, 0x630, v13
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v62, s5, v44
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v44
	v_lshl_or_b32 v162, v66, 5, v46
	v_xor_b32_e32 v44, 8, v154
	v_lshl_or_b32 v45, v45, 8, v47
	v_lshl_or_b32 v40, v40, 11, v48
	v_lshl_or_b32 v46, v57, 8, v57
	v_or3_b32 v164, v54, v55, v52
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s13, s13, 0x80000
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v48, s5, v60
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v52, s5, v61
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v47, s5, v59
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[140:141], null, s71, v36, v[139:140]
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s5, s13
	v_add3_u32 v36, v58, v37, v38
	v_lshl_or_b32 v37, v39, 4, v39
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s12, s0, 4
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s5, s5, 10
	v_mov_b32_e32 v9, v17
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v170, 0, v44
	v_xor_b32_e32 v53, 8, v162
	v_xor_b32_e32 v167, v45, v49
	v_or3_b32 v168, v50, v41, v40
	v_and_b32_e32 v40, 0x760076, v46
	v_xor_b32_e32 v41, 24, v162
	v_xor_b32_e32 v42, 0x810, v163
	v_xor_b32_e32 v43, 32, v164
	v_xor_b32_e32 v44, 64, v164
	v_xor_b32_e32 v45, 0x60, v164
	s_lshl_b32 s3, s12, 14
	s_and_b32 vcc_hi, s5, 0xfffff800
	v_dual_mov_b32 v8, v17 :: v_dual_and_b32 v141, 0x5040504, v37
	v_add_nc_u32_e32 v200, v36, v65
	v_mad_u64_u32 v[36:37], null, s19, 48, v[35:36]
	s_add_i32 vcc_hi, vcc_hi, s3
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v174, s7, v47
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v175, s7, v48
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v176, s7, v52
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v177, 0, v53
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v179, 0, v41
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v180, 0, v42
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v181, 0, v43
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v182, 0, v44
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v183, 0, v45
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v155, 1, v139
	v_or_b32_e32 v156, 2, v139
	v_or_b32_e32 v157, 3, v139
	v_or_b32_e32 v158, 4, v139
	v_or_b32_e32 v159, 5, v139
	v_or_b32_e32 v160, 6, v139
	v_or_b32_e32 v161, 7, v139
	v_xor_b32_e32 v54, 16, v162
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v171, s6, v47
	v_subrev_nc_u32_e32 v172, s6, v48
	v_subrev_nc_u32_e32 v173, s6, v52
	v_lshl_or_b32 v38, v40, 4, v40
	v_xor_b32_e32 v39, 0x2040, v167
	v_xor_b32_e32 v40, 16, v168
	v_xor_b32_e32 v41, 32, v168
	v_xor_b32_e32 v42, 48, v168
	v_xor_b32_e32 v43, 64, v168
	v_xor_b32_e32 v44, 0x50, v168
	v_xor_b32_e32 v45, 0x60, v168
	v_xor_b32_e32 v46, 0x70, v168
	v_xor_b32_e32 v47, 4, v169
	v_xor_b32_e32 v48, 8, v169
	v_xor_b32_e32 v49, 12, v169
	v_xor_b32_e32 v50, 16, v169
	v_xor_b32_e32 v51, 20, v169
	v_xor_b32_e32 v52, 24, v169
	v_xor_b32_e32 v53, 28, v169
	v_or_b32_e32 v184, vcc_hi, v33
	v_lshl_add_u32 v33, s19, 4, v35
	v_lshl_add_u32 v37, s19, 5, v35
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v201, v35, v139
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s18, s1
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s5, s17, s12
	v_lshl_add_u32 v149, v66, 1, 0
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v166, s7, v62
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v178, 0, v54
	v_dual_mov_b32 v7, v17 :: v_dual_and_b32 v144, 0x7060706, v38
	v_dual_mov_b32 v135, v17 :: v_dual_add_nc_u32 v250, 0, v41
	v_dual_mov_b32 v136, v17 :: v_dual_add_nc_u32 v185, 0, v39
	v_dual_mov_b32 v137, v17 :: v_dual_add_nc_u32 v252, 0, v43
	v_dual_mov_b32 v138, v17 :: v_dual_add_nc_u32 v249, 0, v40
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s71, v139
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v165, s6, v62
	v_dual_mov_b32 v240, 0xff800000 :: v_dual_add_nc_u32 v251, 0, v42
	v_add_nc_u32_e32 v253, 0, v44
	v_add_nc_u32_e32 v254, 0, v45
	v_add_nc_u32_e32 v147, 0, v46
	v_add_nc_u32_e32 v143, 0, v47
	v_add_nc_u32_e32 v194, 0, v48
	v_add_nc_u32_e32 v195, 0, v49
	v_add_nc_u32_e32 v196, 0, v50
	v_add_nc_u32_e32 v197, 0, v51
	v_add_nc_u32_e32 v198, 0, v52
	v_add_nc_u32_e32 v199, 0, v53
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v208, v33, v139
	v_add_nc_u32_e32 v209, v33, v155
	v_add_nc_u32_e32 v210, v33, v156
	v_add_nc_u32_e32 v211, v33, v157
	v_add_nc_u32_e32 v212, v33, v158
	v_add_nc_u32_e32 v213, v33, v159
	v_add_nc_u32_e32 v214, v33, v160
	v_add_nc_u32_e32 v215, v33, v161
	v_add_nc_u32_e32 v216, v37, v139
	v_add_nc_u32_e32 v217, v37, v155
	v_add_nc_u32_e32 v218, v37, v156
	v_add_nc_u32_e32 v219, v37, v157
	v_add_nc_u32_e32 v220, v37, v158
	v_add_nc_u32_e32 v221, v37, v159
	v_add_nc_u32_e32 v222, v37, v160
	v_add_nc_u32_e32 v223, v37, v161
	v_add_nc_u32_e32 v228, 5, v201
	v_add_nc_u32_e32 v229, 6, v201
	v_add_nc_u32_e32 v230, 7, v201
	v_add_nc_u32_e32 v231, v36, v139
	v_add_nc_u32_e32 v232, v36, v155
	v_add_nc_u32_e32 v233, v36, v156
	v_add_nc_u32_e32 v234, v36, v157
	v_add_nc_u32_e32 v235, v36, v158
	v_add_nc_u32_e32 v236, v36, v159
	v_add_nc_u32_e32 v237, v36, v160
	v_add_nc_u32_e32 v238, v36, v161
	s_mov_b32 s72, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s104, s16, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s2, s19, s2
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s1, s1, s5
	s_lshl_b32 s101, s71, 4
	s_lshl_b32 s102, s71, 5
	s_mov_b32 s103, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s98, s86
	s_mov_b32 s99, s87
	s_and_b32 s89, s89, 0xffff
	s_and_b32 s97, s11, 0xffff
	s_mov_b32 s92, s14
	s_mov_b32 s96, s10
	s_mov_b32 s84, s8
	s_mov_b32 s85, s9
	s_mov_b32 s93, s15
	s_add_i32 s2, s1, s2
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v239, 16, v34
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s69, s83, vcc_hi
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s70, s2, s83
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[43:44], null, s69, s82, v[126:127]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_nc_u32_e32 v44, 2, v201
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v41, 0, v154
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s72 :: v_dual_add_nc_u32 v42, 0, v162
	v_mov_b32_e32 v34, s73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v123, s70, v44, 2
	v_add_nc_u32_e32 v44, 1, v201
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v35, s74 :: v_dual_mov_b32 v36, s75
	v_dual_mov_b32 v37, s76 :: v_dual_mov_b32 v38, s77
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v124, s70, v44, 2
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v39, s78 :: v_dual_add_nc_u32 v44, 3, v201
	v_mov_b32_e32 v40, s79
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v74, s83, v139
	v_or_b32_e32 v76, s83, v156
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v125, s70, v44, 2
	v_add_nc_u32_e32 v44, 4, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v78, s83, v158
	v_or_b32_e32 v80, s83, v160
	v_or_b32_e32 v75, s83, v155
	v_or_b32_e32 v77, s83, v157
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v190, s70, v44, 2
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[43:46], v43, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v74, v165
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v74, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v76, v165
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s17, v76, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s36, v78, v165
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s40, v78, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s52, v80, v165
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v80, v166
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v122, s70, v201, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s3, v74, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v74, v174
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v75, v165
	v_cmp_ge_i32_e64 s8, v75, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v75, v166
	v_cmp_le_i32_e64 s10, v75, v174
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v76, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v76, v174
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v77, v165
	v_cmp_ge_i32_e64 s28, v77, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s31, v77, v166
	v_cmp_le_i32_e64 s33, v77, v174
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s37, v78, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s41, v78, v174
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v80, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s57, v80, v174
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v81, s83, v161
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v191, s70, v229, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s11, s17
	s_and_b32 s11, s36, s40
	s_and_b32 s17, s52, s56
	s_and_b32 s1, vcc_lo, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v192, s70, v208, 2
	v_add_lshl_u32 v241, s70, v210, 2
	v_add_lshl_u32 v245, s70, v212, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v79, s83, v159
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v193, s70, v209, 2
	v_add_lshl_u32 v242, s70, v211, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s7, s9
	s_and_b32 s9, s19, s31
	s_and_b32 s3, s3, s6
	s_and_b32 s10, s8, s10
	s_and_b32 s31, s16, s18
	s_and_b32 s28, s28, s33
	s_and_b32 s33, s37, s41
	s_and_b32 s8, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s17
	s_and_b32 s36, s53, s57
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s60, v81, v165
	v_cmp_ge_i32_e64 s62, v81, v171
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s63, v81, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s64, v81, v172
	v_cmp_ge_i32_e64 s65, v81, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s66, v81, v174
	v_cmp_le_i32_e64 s67, v81, v175
	v_cmp_le_i32_e64 s68, v81, v176
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, vcc_lo, s7
	s_and_b32 s19, vcc_lo, s9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v81, 0x80000000, v191, s11
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, vcc_lo, s3
	s_and_b32 s7, vcc_lo, s31
	s_and_b32 s9, vcc_lo, s33
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v80, v172
	v_cmp_ge_i32_e64 s55, v80, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s58, v80, v175
	v_cmp_le_i32_e64 s59, v80, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v80, 0x80000000, v190, s8
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, vcc_lo, s10
	s_and_b32 s17, vcc_lo, s28
	s_and_b32 s10, vcc_lo, s36
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v79, v165
	v_cmp_ge_i32_e64 s45, v79, v171
	v_cmp_ge_i32_e64 s46, v79, v172
	v_cmp_ge_i32_e64 s47, v79, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s48, v79, v166
	v_cmp_le_i32_e64 s49, v79, v174
	v_cmp_le_i32_e64 s50, v79, v175
	v_cmp_le_i32_e64 s51, v79, v176
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v79, 0x80000000, v125, s19
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v74, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v74, v175
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s20, v75, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v75, v175
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s24, v76, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s26, v76, v175
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v77, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s34, v77, v175
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v78, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s42, v78, v175
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v74, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s15, v74, v176
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v75, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s23, v75, v176
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v76, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s27, v76, v176
	v_or_b32_e32 v99, 4, v184
	v_or_b32_e32 v111, 28, v184
	v_or_b32_e32 v106, 18, v184
	v_or_b32_e32 v107, 20, v184
	v_or_b32_e32 v119, 42, v184
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v188, s70, v228, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v78, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s43, v78, v176
	v_or_b32_e32 v108, 22, v184
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v189, s70, v230, 2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s30, v77, v173
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s35, v77, v176
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s3, s44, s48
	s_and_b32 s12, s12, s14
	s_and_b32 s14, s20, s22
	s_and_b32 s24, s24, s26
	s_and_b32 s29, s29, s34
	s_and_b32 s36, s38, s42
	s_and_b32 s37, s46, s50
	v_or_b32_e32 v109, 24, v184
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_add_lshl_u32 v243, s70, v213, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s60, s63
	v_or_b32_e32 v98, 2, v184
	v_or_b32_e32 v110, 26, v184
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v244, s70, v215, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, s45, s49
	s_and_b32 s13, s13, s15
	s_and_b32 s15, s21, s23
	s_and_b32 s41, s25, s27
	s_and_b32 s23, vcc_lo, s3
	s_and_b32 s20, vcc_lo, s14
	s_and_b32 s34, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s29
	s_and_b32 s36, vcc_lo, s36
	s_and_b32 s25, vcc_lo, s37
	v_or_b32_e32 v121, 46, v184
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v74, s70, v222, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, s62, s66
	s_and_b32 s27, vcc_lo, s28
	v_or_b32_e32 v100, 6, v184
	v_or_b32_e32 v101, 8, v184
	v_or_b32_e32 v102, 10, v184
	v_or_b32_e32 v103, 12, v184
	v_or_b32_e32 v104, 14, v184
	v_or_b32_e32 v105, 16, v184
	v_or_b32_e32 v112, 30, v184
	v_or_b32_e32 v113, 32, v184
	v_or_b32_e32 v115, 34, v184
	v_or_b32_e32 v116, 36, v184
	v_or_b32_e32 v117, 38, v184
	v_or_b32_e32 v118, 40, v184
	v_or_b32_e32 v120, 44, v184
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v75, s70, v223, 2
	v_add_lshl_u32 v76, s70, v231, 2
	v_add_lshl_u32 v77, s70, v232, 2
	v_add_lshl_u32 v78, s70, v233, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s38, s54, s58
	s_and_b32 s39, s39, s43
	s_and_b32 s46, s65, s68
	s_and_b32 s22, vcc_lo, s31
	s_and_b32 s40, s64, s67
	s_and_b32 s30, s30, s35
	s_and_b32 s44, s47, s51
	s_and_b32 s45, s55, s59
	s_and_b32 s26, vcc_lo, s33
	s_and_b32 s33, vcc_lo, s12
	s_and_b32 s42, vcc_lo, s38
	s_and_b32 s43, vcc_lo, s39
	s_and_b32 s39, vcc_lo, s46
	s_and_b32 s40, vcc_lo, s40
	s_and_b32 s35, vcc_lo, s13
	s_and_b32 s21, vcc_lo, s15
	s_and_b32 s41, vcc_lo, s41
	s_and_b32 s37, vcc_lo, s30
	s_and_b32 s38, vcc_lo, s44
	s_and_b32 s44, vcc_lo, s45
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v74, 0x80000000, v74, s42
	v_or_b32_e32 v186, 48, v184
	v_or_b32_e32 v187, 50, v184
	v_cndmask_b32_e64 v75, 0x80000000, v75, s40
	v_cndmask_b32_e64 v76, 0x80000000, v76, s35
	v_cndmask_b32_e64 v77, 0x80000000, v77, s21
	v_cndmask_b32_e64 v78, 0x80000000, v78, s41
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v186, v186, s83, 1
	v_add_lshl_u32 v187, v187, s83, 1
	s_mul_i32 s30, s71, 48
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[43:44]
	ds_store_b64 v170, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[55:58], v42 offset1:1
	ds_load_2addr_stride64_b64 v[59:62], v42 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[65:68], v177 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[133:134], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[59:60], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[61:62], v[133:134], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v177 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v178 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[131:132], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[131:132], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[33:34], v[131:132], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[35:36], v[131:132], v[90:97] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v178 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[129:130], v[49:56] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[37:40], v179 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[33:34], v[129:130], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[35:36], v[129:130], v[90:97] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v179 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[127:128], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v42
	v_cvt_f32_i32_e32 v39, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v45, v47
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v48, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v51, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[33:34], v[127:128], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[35:36], v[127:128], v[90:97] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v33, s70, v214, 2
	v_cndmask_b32_e64 v34, 0x80000000, v122, s1
	v_cndmask_b32_e64 v35, 0x80000000, v123, s5
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v59, v86
	v_cvt_f32_i32_e32 v61, v88
	v_cvt_f32_i32_e32 v65, v90
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v86, 0x80000000, v192, s6
	v_cndmask_b32_e64 v88, 0x80000000, v241, s7
	v_cndmask_b32_e64 v90, 0x80000000, v245, s9
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v60, v87
	v_cvt_f32_i32_e32 v62, v89
	v_cvt_f32_i32_e32 v66, v91
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v36, 0x80000000, v124, s18
	v_cndmask_b32_e64 v87, 0x80000000, v193, s16
	v_cndmask_b32_e64 v89, 0x80000000, v242, s17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s10
	s_clause 0xb
	buffer_load_b32 v34, v34, s[88:91], 0 offen
	buffer_load_b32 v35, v35, s[88:91], 0 offen
	buffer_load_b32 v81, v81, s[88:91], 0 offen
	buffer_load_b32 v80, v80, s[88:91], 0 offen
	buffer_load_b32 v86, v86, s[88:91], 0 offen
	buffer_load_b32 v88, v88, s[88:91], 0 offen
	buffer_load_b32 v91, v33, s[88:91], 0 offen
	buffer_load_b32 v90, v90, s[88:91], 0 offen
	buffer_load_b32 v190, v79, s[88:91], 0 offen
	buffer_load_b32 v191, v36, s[88:91], 0 offen
	buffer_load_b32 v192, v89, s[88:91], 0 offen
	buffer_load_b32 v193, v87, s[88:91], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v55, v82
	v_cvt_f32_i32_e32 v56, v83
	v_cvt_f32_i32_e32 v57, v84
	v_cvt_f32_i32_e32 v58, v85
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v42, s70, v217, 2
	v_add_lshl_u32 v82, s70, v218, 2
	v_add_lshl_u32 v83, s70, v219, 2
	v_add_lshl_u32 v84, s70, v220, 2
	v_add_lshl_u32 v85, s70, v221, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v37, v41
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v41, s70, v216, 2
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v87, v99, s83, 1
	v_add_lshl_u32 v99, v111, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v111, s70, v238, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v69, v94
	v_cvt_f32_i32_e32 v71, v95
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v79, s70, v234, 2
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v94, v106, s83, 1
	v_add_lshl_u32 v95, v107, s83, 1
	v_add_lshl_u32 v106, v119, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v107, 0x80000000, v188, s23
	v_cndmask_b32_e64 v119, 0x80000000, v42, s20
	v_cndmask_b32_e64 v42, 0x80000000, v82, s34
	v_cndmask_b32_e64 v82, 0x80000000, v83, s24
	v_cndmask_b32_e64 v83, 0x80000000, v84, s36
	v_cndmask_b32_e64 v84, 0x80000000, v85, s25
	v_add_lshl_u32 v85, s70, v237, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v72, v96
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v96, v108, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v108, 0x80000000, v189, s27
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v73, v97
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v97, v109, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v109, 0x80000000, v243, s22
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v242, v121, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s33
	v_cndmask_b32_e64 v121, 0x80000000, v111, s39
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v68, v93
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v89, v101, s83, 1
	v_add_lshl_u32 v92, v104, s83, 1
	v_add_lshl_u32 v93, v105, s83, 1
	v_add_lshl_u32 v101, v113, s83, 1
	v_add_lshl_u32 v104, v117, s83, 1
	v_add_lshl_u32 v105, v118, s83, 1
	v_add_lshl_u32 v241, v120, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v79, 0x80000000, v79, s37
	v_cndmask_b32_e64 v85, 0x80000000, v85, s44
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v33, 0xff800000, v34, s1
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v34, 0xff800000, v35, s5
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v36, 0xff800000, v81, s11
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v35, 0xff800000, v80, s8
	v_add_lshl_u32 v80, s70, v235, 2
	v_add_lshl_u32 v81, s70, v236, 2
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v122, 0xff800000, v86, s6
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v86, v98, s83, 1
	v_add_lshl_u32 v98, v110, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v110, 0x80000000, v244, s26
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v123, 0xff800000, v88, s7
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v124, 0xff800000, v90, s9
	v_cndmask_b32_e64 v125, 0xff800000, v91, s10
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v88, v100, s83, 1
	v_add_lshl_u32 v90, v102, s83, 1
	v_add_lshl_u32 v91, v103, s83, 1
	v_add_lshl_u32 v100, v112, s83, 1
	v_add_lshl_u32 v102, v115, s83, 1
	v_add_lshl_u32 v103, v116, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v80, 0x80000000, v80, s43
	v_cndmask_b32_e64 v81, 0x80000000, v81, s38
	s_clause 0x13
	buffer_load_b32 v188, v107, s[88:91], 0 offen
	buffer_load_b32 v189, v108, s[88:91], 0 offen
	buffer_load_b32 v243, v109, s[88:91], 0 offen
	buffer_load_b32 v244, v110, s[88:91], 0 offen
	buffer_load_b32 v109, v41, s[88:91], 0 offen
	buffer_load_b32 v110, v42, s[88:91], 0 offen
	buffer_load_b32 v111, v83, s[88:91], 0 offen
	buffer_load_b32 v112, v74, s[88:91], 0 offen
	buffer_load_b32 v113, v76, s[88:91], 0 offen
	buffer_load_b32 v115, v78, s[88:91], 0 offen
	buffer_load_b32 v116, v80, s[88:91], 0 offen
	buffer_load_b32 v117, v85, s[88:91], 0 offen
	buffer_load_b32 v41, v75, s[88:91], 0 offen
	buffer_load_b32 v42, v84, s[88:91], 0 offen
	buffer_load_b32 v118, v82, s[88:91], 0 offen
	buffer_load_b32 v120, v119, s[88:91], 0 offen
	buffer_load_b32 v107, v121, s[88:91], 0 offen
	buffer_load_b32 v108, v81, s[88:91], 0 offen
	buffer_load_b32 v119, v79, s[88:91], 0 offen
	buffer_load_b32 v121, v77, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v74, s83, v184, 1
	s_clause 0x19
	buffer_load_u16 v74, v74, s[92:95], 0 offen
	buffer_load_u16 v75, v86, s[92:95], 0 offen
	buffer_load_u16 v76, v87, s[92:95], 0 offen
	buffer_load_u16 v77, v88, s[92:95], 0 offen
	buffer_load_u16 v78, v89, s[92:95], 0 offen
	buffer_load_u16 v79, v90, s[92:95], 0 offen
	buffer_load_u16 v80, v91, s[92:95], 0 offen
	buffer_load_u16 v81, v92, s[92:95], 0 offen
	buffer_load_u16 v82, v93, s[92:95], 0 offen
	buffer_load_u16 v83, v94, s[92:95], 0 offen
	buffer_load_u16 v84, v95, s[92:95], 0 offen
	buffer_load_u16 v85, v96, s[92:95], 0 offen
	buffer_load_u16 v86, v97, s[92:95], 0 offen
	buffer_load_u16 v87, v98, s[92:95], 0 offen
	buffer_load_u16 v88, v99, s[92:95], 0 offen
	buffer_load_u16 v89, v100, s[92:95], 0 offen
	buffer_load_u16 v90, v101, s[92:95], 0 offen
	buffer_load_u16 v91, v102, s[92:95], 0 offen
	buffer_load_u16 v92, v103, s[92:95], 0 offen
	buffer_load_u16 v93, v104, s[92:95], 0 offen
	buffer_load_u16 v94, v105, s[92:95], 0 offen
	buffer_load_u16 v95, v106, s[92:95], 0 offen
	buffer_load_u16 v96, v241, s[92:95], 0 offen
	buffer_load_u16 v97, v242, s[92:95], 0 offen
	buffer_load_u16 v98, v186, s[92:95], 0 offen
	buffer_load_u16 v99, v187, s[92:95], 0 offen
	v_or_b32_e32 v100, 52, v184
	v_or_b32_e32 v101, 54, v184
	v_or_b32_e32 v102, 56, v184
	v_or_b32_e32 v103, 58, v184
	v_or_b32_e32 v104, 60, v184
	v_add_lshl_u32 v100, v100, s83, 1
	v_add_lshl_u32 v101, v101, s83, 1
	v_add_lshl_u32 v102, v102, s83, 1
	v_add_lshl_u32 v103, v103, s83, 1
	v_add_lshl_u32 v104, v104, s83, 1
	s_clause 0x4
	buffer_load_u16 v100, v100, s[92:95], 0 offen
	buffer_load_u16 v101, v101, s[92:95], 0 offen
	buffer_load_u16 v102, v102, s[92:95], 0 offen
	buffer_load_u16 v103, v103, s[92:95], 0 offen
	buffer_load_u16 v104, v104, s[92:95], 0 offen
	v_or_b32_e32 v105, 62, v184
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v106, 0, v167
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v33
	v_cmp_neq_f32_e64 s13, 0xff800000, v34
	v_cmp_neq_f32_e64 s29, 0xff800000, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v105, v105, s83, 1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v36
	v_cmp_neq_f32_e64 s15, 0xff800000, v122
	v_cmp_neq_f32_e64 s14, 0xff800000, v123
	v_cmp_neq_f32_e64 s49, 0xff800000, v124
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v105, v105, s[92:95], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v106, v[33:36]
	ds_store_b128 v106, v[122:125] offset:512
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s50, 0xff800000, v125
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(54)
	v_cndmask_b32_e64 v122, 0xff800000, v191, s18
	v_cndmask_b32_e64 v123, 0xff800000, v190, s19
	s_waitcnt vmcnt(52)
	v_cndmask_b32_e64 v33, 0xff800000, v193, s16
	v_cndmask_b32_e64 v34, 0xff800000, v192, s17
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v190, v239, v46
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v122
	v_cmp_neq_f32_e64 s46, 0xff800000, v123
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	v_cmp_neq_f32_e64 s51, 0xff800000, v34
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v191, v239, v47
	v_mul_f32_e32 v192, v239, v48
	v_mul_f32_e32 v193, v239, v49
	v_mul_f32_e32 v241, v239, v50
	v_mul_f32_e32 v242, v239, v51
	v_mul_f32_e32 v245, v239, v54
	v_mul_f32_e32 v247, v239, v56
	v_mul_f32_e32 v145, v239, v60
	v_mul_f32_e32 v148, v239, v61
	v_mul_f32_e32 v69, v239, v69
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s28, s11, s28
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v146, v239, v58
	v_mul_f32_e32 v142, v239, v59
	v_mul_f32_e32 v202, v239, v62
	v_mul_f32_e32 v204, v239, v66
	v_mul_f32_e32 v205, v239, v67
	v_mul_f32_e32 v206, v239, v68
	v_mul_f32_e32 v71, v239, v71
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s29, s8, s29
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v72, v239, v72
	v_mul_f32_e32 v246, v239, v55
	v_mul_f32_e32 v203, v239, v65
	v_mul_f32_e32 v73, v239, v73
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s31, s1, s12
	s_and_b32 s12, s10, s50
	s_and_b32 s14, s7, s14
	s_and_b32 s15, s6, s15
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v248, v239, v57
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s83, s83, 64
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(51)
	v_cndmask_b32_e64 v124, 0xff800000, v188, s23
	s_waitcnt vmcnt(50)
	v_cndmask_b32_e64 v125, 0xff800000, v189, s27
	s_waitcnt vmcnt(49)
	v_cndmask_b32_e64 v35, 0xff800000, v243, s22
	s_waitcnt vmcnt(48)
	v_cndmask_b32_e64 v36, 0xff800000, v244, s26
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v243, v239, v52 :: v_dual_lshlrev_b32 v54, 16, v77
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v185, v[122:125]
	v_add_nc_u32_e32 v122, 0, v168
	ds_store_b128 v185, v[33:36] offset:512
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s52, 0xff800000, v35
	v_cmp_neq_f32_e64 s53, 0xff800000, v36
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v109, s33
	v_cndmask_b32_e64 v34, 0xff800000, v110, s34
	v_cndmask_b32_e64 v35, 0xff800000, v111, s36
	v_cndmask_b32_e64 v36, 0xff800000, v112, s42
	v_cndmask_b32_e64 v110, 0xff800000, v115, s41
	v_cndmask_b32_e64 v111, 0xff800000, v116, s43
	v_cndmask_b32_e64 v112, 0xff800000, v117, s44
	v_cndmask_b32_e64 v115, 0xff800000, v120, s20
	v_cndmask_b32_e64 v116, 0xff800000, v118, s24
	v_cndmask_b32_e64 v117, 0xff800000, v42, s25
	v_cndmask_b32_e64 v118, 0xff800000, v41, s40
	v_cndmask_b32_e64 v109, 0xff800000, v113, s35
	v_cndmask_b32_e64 v186, 0xff800000, v121, s21
	v_cndmask_b32_e64 v187, 0xff800000, v119, s37
	v_cndmask_b32_e64 v188, 0xff800000, v108, s38
	v_cndmask_b32_e64 v189, 0xff800000, v107, s39
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v124
	v_cmp_neq_f32_e64 s48, 0xff800000, v125
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v108, v239, v38 :: v_dual_add_nc_u32 v123, 0, v163
	v_dual_mul_f32 v121, v239, v44 :: v_dual_add_nc_u32 v124, 0, v169
	v_mul_f32_e32 v107, v239, v37
	v_mul_f32_e32 v113, v239, v39
	v_mul_f32_e32 v119, v239, v40
	v_dual_mul_f32 v120, v239, v43 :: v_dual_lshlrev_b32 v51, 16, v74
	v_mul_f32_e32 v125, v239, v45
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s54, 0xff800000, v33
	v_cmp_neq_f32_e64 s55, 0xff800000, v34
	v_cmp_neq_f32_e64 s56, 0xff800000, v35
	v_cmp_neq_f32_e64 s57, 0xff800000, v36
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v106, v[33:36] offset:1024
	ds_store_b128 v106, v[109:112] offset:1536
	ds_store_b128 v185, v[115:118] offset:1024
	ds_store_b128 v185, v[186:189] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v122
	ds_load_b128 v[37:40], v249
	ds_load_b128 v[43:46], v250
	ds_load_b128 v[47:50], v251
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v244, v239, v53 :: v_dual_lshlrev_b32 v61, 16, v82
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v53, 16, v76
	v_lshlrev_b32_e32 v60, 16, v81
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v74, 16, v88
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v82, 16, v96
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v88, 16, v102
	v_mad_u64_u32 v[41:42], null, s69, s71, v[140:141]
	v_lshlrev_b32_e32 v52, 16, v75
	v_lshlrev_b32_e32 v59, 16, v80
	v_lshlrev_b32_e32 v66, 16, v85
	v_lshlrev_b32_e32 v75, 16, v89
	v_lshlrev_b32_e32 v77, 16, v91
	v_lshlrev_b32_e32 v80, 16, v94
	v_lshlrev_b32_e32 v81, 16, v95
	v_lshlrev_b32_e32 v85, 16, v99
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v94, v113, v53 :: v_dual_lshlrev_b32 v89, 16, v103
	v_mul_f32_e32 v95, v119, v54
	v_dual_mul_f32 v99, v190, v60 :: v_dual_mul_f32 v82, v148, v82
	v_mul_f32_e32 v69, v69, v88
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v88, 0, 1, s28
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v56, 16, v79
	v_lshlrev_b32_e32 v76, 16, v90
	v_lshlrev_b32_e32 v79, 16, v93
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v103, v241, v66 :: v_dual_lshlrev_b32 v90, 16, v104
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s66, 0xff800000, v118
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v93, v108, v52
	v_dual_mul_f32 v80, v142, v80 :: v_dual_mul_f32 v71, v71, v89
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v89, 0, 1, s29
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v118, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v119, 0x3fb8aa3b, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v33.l, v88.l
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v42, v41, s30, 1
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s30, s5, s13
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v65, 16, v84
	v_lshlrev_b32_e32 v68, 16, v87
	v_lshlrev_b32_e32 v84, 16, v98
	v_lshlrev_b32_e32 v87, 16, v101
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v72, v72, v90 :: v_dual_lshlrev_b32 v91, 16, v105
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v90, 0, 1, s30
	v_mov_b16_e32 v34.l, v89.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v55, 16, v78
	v_lshlrev_b32_e32 v62, 16, v83
	v_lshlrev_b32_e32 v78, 16, v92
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v92, v107, v51 :: v_dual_lshlrev_b32 v83, 16, v97
	v_mul_f32_e32 v97, v121, v56
	v_dual_mul_f32 v84, v203, v84 :: v_dual_mul_f32 v73, v73, v91
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v91, 0, 1, s31
	v_or_b16 v88.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v90.l
	v_cndmask_b32_e64 v106, 0, 1, s12
	s_and_b32 s13, s9, s49
	v_mov_b16_e32 v34.l, v91.l
	v_cndmask_b32_e64 v107, 0, 1, s13
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v108, 0, 1, s14
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s58, 0xff800000, v109
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v109, 0, 1, s15
	s_and_b32 s8, s42, s57
	v_or_b16 v88.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v106.l
	v_mov_b16_e32 v34.l, v107.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s59, 0xff800000, v110
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v110, 0, 1, s8
	s_and_b32 s9, s36, s56
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s60, 0xff800000, v111
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v111, 0, 1, s9
	s_and_b32 s10, s34, s55
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s62, 0xff800000, v112
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v89.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v108.l
	v_mov_b16_e32 v34.l, v109.l
	v_cndmask_b32_e64 v112, 0, 1, s10
	s_and_b32 s11, s33, s54
	s_and_b32 s1, s44, s62
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v113, 0, 1, s11
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s63, 0xff800000, v115
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v115, 0, 1, s1
	s_and_b32 s5, s43, s60
	v_or_b16 v89.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v110.l
	v_mov_b16_e32 v34.l, v111.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s64, 0xff800000, v116
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v116, 0, 1, s5
	s_and_b32 s6, s41, s59
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s65, 0xff800000, v117
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v117, 0, 1, s6
	s_and_b32 s7, s35, s58
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_lshlrev_b32_e32 v67, 16, v86
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v90.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v112.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v101, v192, v62 :: v_dual_lshlrev_b32 v86, 16, v100
	v_dual_mul_f32 v96, v120, v55 :: v_dual_mul_f32 v105, v243, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v120, 0x3fb8aa3b, v35
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v35, 0, 1, s7
	s_and_b32 s33, s27, s48
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v86, v205, v86 :: v_dual_mul_f32 v121, 0x3fb8aa3b, v36
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v90.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v115.l
	v_mov_b16_e32 v34.l, v116.l
	v_cndmask_b32_e64 v36, 0, 1, s33
	s_and_b32 s34, s23, s47
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v122, 0x3fb8aa3b, v37
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v37, 0, 1, s34
	s_and_b32 s35, s19, s46
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v47, 0x3fb8aa3b, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v107.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v117.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v38, 0, 1, s35
	s_and_b32 s36, s18, s45
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s68, 0xff800000, v187
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s70, 0xff800000, v189
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v98, v125, v59 :: v_dual_mul_f32 v77, v247, v77
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v125, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v107.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v34.l, v37.l
	v_cndmask_b32_e64 v39, 0, 1, s36
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[51:54], v252
	ds_load_b128 v[55:58], v253
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v100, v191, v61 :: v_dual_mul_f32 v75, v245, v75
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v102, v193, v65 :: v_dual_mul_f32 v79, v146, v79
	v_dual_mul_f32 v104, v242, v67 :: v_dual_mul_f32 v81, v145, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v111.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[59:62], v254
	ds_load_b128 v[65:68], v147
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s23, s22, s52
	s_and_b32 s22, s26, s53
	s_and_b32 s26, s17, s51
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s67, 0xff800000, v186
	v_cmp_neq_f32_e64 s69, 0xff800000, v188
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s27, s16, s3
	s_and_b32 s19, s25, s65
	s_and_b32 s18, s40, s66
	s_and_b32 s25, s20, s63
	s_and_b32 s24, s24, s64
	s_and_b32 s16, s39, s70
	s_and_b32 s20, s37, s68
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v145, 0x3fb8aa3b, v40
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v148, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v51, 0x3fb8aa3b, v51
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v40, 0, 1, s22
	v_cndmask_b32_e64 v44, 0, 1, s26
	v_mov_b16_e32 v34.l, v39.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v146, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v49
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v186, 0x3fb8aa3b, v45 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v55
	v_mul_f32_e32 v187, 0x3fb8aa3b, v46
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v43, 0, 1, s23
	v_cndmask_b32_e64 v45, 0, 1, s27
	v_cndmask_b32_e64 v46, 0, 1, s18
	v_cndmask_b32_e64 v106, 0, 1, s24
	v_cndmask_b32_e64 v109, 0, 1, s16
	v_cndmask_b32_e64 v112, 0, 1, s20
	s_and_b32 s17, s38, s69
	s_and_b32 s21, s21, s67
	v_or_b16 v111.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v40.l
	v_mov_b16_e32 v35.l, v44.l
	v_cndmask_b32_e64 v91, 0, 1, s19
	v_cndmask_b32_e64 v108, 0, 1, s25
	v_cndmask_b32_e64 v110, 0, 1, s17
	v_cndmask_b32_e64 v113, 0, 1, s21
	v_mov_b16_e32 v34.l, v43.l
	v_mov_b16_e32 v36.l, v45.l
	v_mov_b16_e32 v37.l, v46.l
	v_mov_b16_e32 v39.l, v106.l
	v_mov_b16_e32 v43.l, v109.l
	v_mov_b16_e32 v45.l, v112.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v33.h, 8, v35.l
	v_mov_b16_e32 v38.l, v91.l
	v_mov_b16_e32 v40.l, v108.l
	v_mov_b16_e32 v44.l, v110.l
	v_mov_b16_e32 v46.l, v113.l
	v_lshlrev_b16 v34.h, 8, v37.l
	v_lshlrev_b16 v35.l, 8, v39.l
	v_lshlrev_b16 v35.h, 8, v43.l
	v_lshlrev_b16 v36.h, 8, v45.l
	v_or_b16 v37.h, v34.l, v33.l
	v_or_b16 v37.l, v36.l, v33.h
	v_or_b16 v33.h, v38.l, v34.h
	v_or_b16 v33.l, v40.l, v35.l
	v_or_b16 v34.h, v44.l, v35.h
	v_or_b16 v34.l, v46.l, v36.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v65
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v65, 0x3fb8aa3b, v66
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_2addr_b32 v123, v88, v89 offset1:32
	ds_store_2addr_b32 v123, v90, v107 offset0:64 offset1:96
	ds_store_2addr_b32 v180, v111, v37 offset1:32
	ds_store_2addr_b32 v180, v33, v34 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v124
	ds_load_b32 v35, v143
	ds_load_b32 v36, v194
	ds_load_b32 v37, v195
	ds_load_b32 v39, v196
	ds_load_b32 v40, v197
	ds_load_b32 v44, v198
	ds_load_b32 v66, v199
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v78, v248, v78 :: v_dual_mul_f32 v87, v206, v87
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v53
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v57
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_fmac_f32 v119, s104, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v48, s104, v105 :: v_dual_fmac_f32 v53, s104, v78
	v_dual_fmac_f32 v50, s104, v75 :: v_dual_fmac_f32 v57, s104, v82
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v78, 0x1000000, v33
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v46, 0x3fb8aa3b, v68 :: v_dual_fmac_f32 v121, s104, v95
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v82, 0x1000000, v36
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v122, s104, v96 :: v_dual_fmac_f32 v187, s104, v103
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s63, 0, v78
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v74, v244, v74 :: v_dual_mul_f32 v83, v202, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s56, 0, v82
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v58, 0x3fb8aa3b, v58 :: v_dual_mul_f32 v67, 0x3fb8aa3b, v67
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v118, s104, v92 :: v_dual_fmac_f32 v125, s104, v98
	v_dual_fmac_f32 v56, s104, v81 :: v_dual_fmac_f32 v65, s104, v71
	v_dual_fmac_f32 v62, s104, v87 :: v_dual_and_b32 v71, 0x10000, v36
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v81, 1, v36
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v92, 1, v66
	v_lshrrev_b16 v38.l, 8, v36.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v121, s63
	v_cndmask_b32_e64 v121, 0xff800000, v187, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v91, 0x1000000, v44
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v76, v246, v76 :: v_dual_mul_f32 v85, v204, v85
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v58, s104, v83 :: v_dual_fmac_f32 v45, s104, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v34.h, 8, v35.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s40, 0, v91
	v_cmp_eq_u32_e64 s39, 1, v92
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v148, s104, v101 :: v_dual_fmac_f32 v51, s104, v76
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v75, 0x10000, v44
	v_and_b32_e32 v76, 0x10000, v66
	v_and_b32_e32 v90, 1, v44
	v_and_b32_e32 v93, 0x1000000, v66
	v_lshrrev_b16 v34.l, 8, v33.l
	v_lshrrev_b16 v44.h, 8, v66.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v62, s40
	v_cndmask_b32_e64 v66, 0xff800000, v45, s39
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v68, 0x10000, v33
	v_and_b16 v45.l, 1, v34.h
	v_and_b16 v45.h, 1, v38.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v59
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v61
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v120, s104, v94 :: v_dual_fmac_f32 v145, s104, v99
	v_dual_fmac_f32 v46, s104, v73 :: v_dual_and_b32 v69, 0x10000, v35
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u16_e64 s67, 1, v45.l
	v_cmp_eq_u16_e64 s60, 1, v45.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v45, v62, v66
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s3, 0, v68
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v186, s104, v102 :: v_dual_fmac_f32 v55, s104, v80
	v_dual_fmac_f32 v52, s104, v77 :: v_dual_fmac_f32 v59, s104, v84
	v_dual_fmac_f32 v54, s104, v79 :: v_dual_fmac_f32 v61, s104, v86
	v_dual_fmac_f32 v60, s104, v85 :: v_dual_fmac_f32 v67, s104, v72
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v79, 1, v35
	v_and_b32_e32 v80, 0x1000000, v35
	v_lshrrev_b16 v38.h, 8, v37.l
	v_lshrrev_b16 v43.l, 8, v39.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v120, s3
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v77, 1, v33
	v_cmp_ne_u32_e64 s64, 0, v69
	v_cmp_ne_u32_e64 s38, 0, v76
	v_cmp_ne_u32_e64 s37, 0, v93
	v_cmp_eq_u16_e64 s68, 1, v34.l
	v_and_b32_e32 v84, 0x1000000, v37
	v_and_b32_e32 v85, 1, v39
	v_and_b32_e32 v86, 0x1000000, v39
	v_lshrrev_b16 v43.h, 8, v40.l
	v_lshrrev_b16 v44.l, 8, v44.l
	v_cmp_eq_u32_e64 s62, 1, v77
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v67, s38
	v_cndmask_b32_e64 v69, 0xff800000, v46, s37
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v73, 0x10000, v39
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v125, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v83, 1, v37
	v_and_b16 v46.l, 1, v38.h
	v_and_b16 v43.l, 1, v43.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v119, s68
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v72, 0x10000, v37
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v142, s104, v97 :: v_dual_fmac_f32 v47, s104, v104
	v_dual_fmac_f32 v146, s104, v100 :: v_dual_fmac_f32 v49, s104, v74
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v87, 1, v40
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v118, s62
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v74, 0x10000, v40
	v_cmp_eq_u32_e64 s65, 1, v79
	v_cmp_ne_u32_e64 s57, 0, v71
	v_cmp_eq_u32_e64 s54, 1, v83
	v_cmp_ne_u32_e64 s53, 0, v72
	v_cmp_ne_u32_e64 s52, 0, v84
	v_cmp_eq_u32_e64 s51, 1, v85
	v_and_b16 v43.h, 1, v43.h
	v_and_b16 v44.l, 1, v44.l
	v_and_b16 v44.h, 1, v44.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v119, 0xff800000, v148, s60
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v89, 0x1000000, v40
	v_cmp_eq_u16_e64 s59, 1, v46.l
	v_cmp_eq_u16_e64 s55, 1, v43.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v122, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s66, 0, v80
	v_cmp_eq_u32_e64 s58, 1, v81
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v120, 0xff800000, v186, s57
	v_cndmask_b32_e64 v122, 0xff800000, v47, s54
	v_cndmask_b32_e64 v124, 0xff800000, v49, s53
	v_cndmask_b32_e64 v125, 0xff800000, v50, s52
	v_cndmask_b32_e64 v82, 0xff800000, v51, s51
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s48, 0, v86
	v_cmp_eq_u32_e64 s47, 1, v87
	v_cmp_ne_u32_e64 s45, 0, v74
	v_cmp_ne_u32_e64 s44, 0, v89
	v_cmp_eq_u32_e64 s43, 1, v90
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v142, s67
	v_cndmask_b32_e64 v123, 0xff800000, v48, s59
	v_cndmask_b32_e64 v83, 0xff800000, v52, s55
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s50, 1, v43.h
	v_cmp_eq_u16_e64 s46, 1, v44.l
	v_cmp_eq_u16_e64 s42, 1, v44.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v46, v68, v69
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s49, 0, v73
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v33, v34
.Ltmp6:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s41, 0, v75
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v40, 0xff800000, v145, s66
	v_cndmask_b32_e64 v118, 0xff800000, v146, s58
	v_cndmask_b32_e64 v84, 0xff800000, v53, s49
	v_cndmask_b32_e64 v85, 0xff800000, v54, s48
	v_cndmask_b32_e64 v86, 0xff800000, v55, s47
	v_cndmask_b32_e64 v88, 0xff800000, v57, s45
	v_cndmask_b32_e64 v89, 0xff800000, v58, s44
	v_cndmask_b32_e64 v59, 0xff800000, v59, s43
	v_cndmask_b32_e64 v61, 0xff800000, v61, s41
	v_cndmask_b32_e64 v87, 0xff800000, v56, s50
	v_cndmask_b32_e64 v60, 0xff800000, v60, s46
	v_cndmask_b32_e64 v67, 0xff800000, v65, s42
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v47, v119, v120, v121
	v_max3_f32 v48, v122, v123, v124
	v_max3_f32 v49, v125, v82, v83
	v_max3_f32 v51, v36, v37, v38
	v_max3_f32 v43, v84, v85, v86
	v_max3_f32 v44, v39, v40, v118
	v_max3_f32 v52, v87, v88, v89
	v_max3_f32 v53, v59, v60, v61
	v_max3_f32 v45, v45, v67, v46
	v_max3_f32 v46, v47, v48, v49
	v_max3_f32 v47, v50, v35, v51
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v43, v43, v52, v53
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.h, 0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v44, v47, v44, v46
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v53, 0x80000000, v42, s0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.h, v78.h
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v43, v44, v43, v45
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v72.h, v78.h
	v_mov_b16_e32 v73.h, v78.h
	v_mov_b16_e32 v79.h, v78.h
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v45, v41, s101, 1
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v44, v43, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v71, v114, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v43, v34, v71 :: v_dual_lshlrev_b32 v44, 4, v0
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v58, 0, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v43, s68
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	v_add_nc_u32_e32 v43, 0, v164
	ds_store_b128 v43, v[33:36]
	ds_store_b128 v43, v[82:85] offset:2048
	ds_store_b128 v181, v[37:40]
	ds_store_b128 v181, v[86:89] offset:2048
	ds_store_b128 v182, v[118:121]
	ds_store_b128 v182, v[59:62] offset:2048
	ds_store_b128 v183, v[122:125]
	ds_store_b128 v183, v[66:69] offset:2048
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v71
	v_sub_f32_e32 v34, v35, v71
	v_sub_f32_e32 v35, v36, v71
	v_sub_f32_e32 v36, v37, v71
	v_sub_f32_e32 v37, v38, v71
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v39, v71
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v78.l, v57.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v39, v40, v71
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s62
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v80, 1, v78
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s3
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s63
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.l, v33.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s65
	v_cndmask_b32_e64 v38, 0, v38, s64
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s63, v33, v33
	v_mov_b16_e32 v72.l, v34.h
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v57, v57, v80, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s67
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v73.l, v36.h
	v_add3_u32 v33, v33, v65, 0x7fff
	v_mov_b16_e32 v79.l, v38.h
	v_mov_b16_e32 v78.l, v35.h
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	ds_load_b128 v[110:113], v200
	ds_load_b128 v[102:105], v200 offset:256
	ds_load_b128 v[106:109], v200 offset:1024
	ds_load_b128 v[98:101], v200 offset:1280
	ds_load_b128 v[94:97], v200 offset:512
	ds_load_b128 v[74:77], v200 offset:768
	ds_load_b128 v[90:93], v200 offset:1536
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v57.l, 0x7fff, v33.h, s63
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v80, v124, v71 :: v_dual_and_b32 v33, 1, v72
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v40, v114, v71
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s64, v34, v34
	v_and_b32_e32 v65, 1, v73
	v_and_b32_e32 v72, 1, v79
	v_and_b32_e32 v73, 1, v78
	v_add3_u32 v33, v34, v33, 0x7fff
	v_mov_b16_e32 v78.l, v37.h
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v40, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s66, v36, v36
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_add3_u32 v34, v36, v65, 0x7fff
	v_add3_u32 v36, v38, v72, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v33.h, s64
	v_and_b32_e32 v33, 1, v78
	v_mov_b16_e32 v78.l, v39.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s62, 0xff800000, v114
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s65, v35, v35
	v_add3_u32 v35, v35, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v79, v125, v71 :: v_dual_and_b32 v72, 1, v78
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[114:117], v200 offset:1792
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s67, v37, v37
	v_cndmask_b16 v38.h, 0x7fff, v35.h, s65
	v_cmp_o_f32_e64 s63, v39, v39
	v_add3_u32 v35, v39, v72, 0x7fff
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v72, 0, v40, s62
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v44, 1, v41
	v_add_lshl_u32 v41, v41, s102, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v34.h, s66
	v_permlanex16_b32 v34, v57, s103, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v72
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	v_cndmask_b32_e64 v49, 0x80000000, v41, s0
	s_clause 0x3
	buffer_load_b128 v[41:44], v44, s[96:99], 0 offen
	buffer_load_b128 v[45:48], v45, s[96:99], 0 offen
	buffer_load_b128 v[49:52], v49, s[96:99], 0 offen
	buffer_load_b128 v[53:56], v53, s[96:99], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v30, v30, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v37, v37, v33, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v36.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v35.h, s63
	v_permlanex16_b32 v36, v38, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v57, v141
	v_cndmask_b16 v65.h, 0x7fff, v37.h, s67
	v_perm_b32 v34, v34, v57, v144
	v_permlanex16_b32 v57, v40, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v38, v141
	v_perm_b32 v36, v36, v38, v144
	v_permlanex16_b32 v38, v65, s103, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v39, v57, v40, v141
	v_perm_b32 v40, v57, v40, v144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v18, v18, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v37, v38, v65, v141
	v_perm_b32 v38, v38, v65, v144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v72
	v_mul_f32_e32 v20, v20, v72
	v_mul_f32_e32 v21, v21, v72
	v_mul_f32_e32 v22, v22, v72
	v_mul_f32_e32 v23, v23, v72
	v_mul_f32_e32 v24, v24, v72
	v_mul_f32_e32 v31, v31, v72
	v_mul_f32_e32 v32, v32, v72
	v_dual_mul_f32 v29, v29, v72 :: v_dual_sub_f32 v124, v82, v71
	v_mul_f32_e32 v26, v26, v72
	v_mul_f32_e32 v27, v27, v72
	v_mul_f32_e32 v28, v28, v72
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v79, v79
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v10, v10, v72
	v_mul_f32_e32 v12, v12, v72
	v_mul_f32_e32 v14, v14, v72
	v_mul_f32_e32 v16, v16, v72
	v_mul_f32_e32 v2, v2, v72
	v_mul_f32_e32 v4, v4, v72
	v_mul_f32_e32 v6, v6, v72
	v_mul_f32_e32 v8, v8, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s53
	v_cndmask_b32_e64 v79, 0, v79, s52
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v58, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v58, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v58, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v244, v149 offset:768
	ds_load_u16_d16 v44, v149 offset:832
	ds_load_u16_d16 v245, v149 offset:1024
	ds_load_u16_d16 v45, v149 offset:1088
	ds_load_u16_d16 v246, v149 offset:1280
	ds_load_u16_d16 v46, v149 offset:1344
	ds_load_u16_d16 v247, v149 offset:1536
	ds_load_u16_d16 v47, v149 offset:1600
	ds_load_u16_d16 v243, v149 offset:512
	ds_load_u16_d16 v248, v149 offset:1792
	ds_load_u16_d16 v48, v149 offset:1856
	ds_load_u16_d16 v241, v149
	ds_load_u16_d16 v43, v149 offset:576
	ds_load_u16_d16 v242, v149 offset:256
	ds_load_u16_d16 v41, v149 offset:64
	ds_load_u16_d16 v42, v149 offset:320
	ds_load_u16_d16 v186, v149 offset:32
	ds_load_u16_d16 v187, v149 offset:288
	ds_load_u16_d16 v50, v149 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v50, v149 offset:480
	ds_load_u16_d16 v49, v149 offset:96
	ds_load_u16_d16_hi v241, v149 offset:128
	ds_load_u16_d16_hi v43, v149 offset:704
	ds_load_u16_d16_hi v244, v149 offset:896
	ds_load_u16_d16_hi v44, v149 offset:960
	ds_load_u16_d16_hi v245, v149 offset:1152
	ds_load_u16_d16_hi v45, v149 offset:1216
	ds_load_u16_d16_hi v246, v149 offset:1408
	ds_load_u16_d16_hi v46, v149 offset:1472
	ds_load_u16_d16_hi v247, v149 offset:1664
	ds_load_u16_d16_hi v47, v149 offset:1728
	ds_load_u16_d16_hi v248, v149 offset:1920
	ds_load_u16_d16_hi v243, v149 offset:640
	ds_load_u16_d16_hi v242, v149 offset:384
	ds_load_u16_d16 v188, v149 offset:544
	ds_load_u16_d16 v52, v149 offset:864
	ds_load_u16_d16 v53, v149 offset:1120
	ds_load_u16_d16 v54, v149 offset:1376
	ds_load_u16_d16 v55, v149 offset:1632
	ds_load_u16_d16_hi v48, v149 offset:1984
	ds_load_u16_d16 v57, v149 offset:2048
	ds_load_u16_d16 v65, v149 offset:2112
	ds_load_u16_d16 v56, v149 offset:1888
	ds_load_u16_d16_hi v186, v149 offset:160
	ds_load_u16_d16_hi v41, v149 offset:192
	ds_load_u16_d16 v51, v149 offset:608
	ds_load_u16_d16 v189, v149 offset:800
	ds_load_u16_d16 v190, v149 offset:1056
	ds_load_u16_d16 v191, v149 offset:1312
	ds_load_u16_d16 v192, v149 offset:1568
	ds_load_u16_d16 v193, v149 offset:1824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v188, v149 offset:672
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[241:248], v[33:40], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v242, v119, v71
	v_sub_f32_e32 v241, v120, v71
	v_sub_f32_e32 v120, v121, v71
	v_sub_f32_e32 v119, v122, v71
	v_sub_f32_e32 v122, v84, v71
	v_sub_f32_e32 v121, v85, v71
	v_sub_f32_e32 v85, v86, v71
	v_sub_f32_e32 v84, v87, v71
	v_sub_f32_e32 v86, v59, v71
	v_sub_f32_e32 v87, v60, v71
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v109, v109
	v_dual_max_f32 v60, v113, v113 :: v_dual_sub_f32 v243, v118, v71
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v118, v123, v71
	v_sub_f32_e32 v123, v83, v71
	v_sub_f32_e32 v83, v88, v71
	v_sub_f32_e32 v88, v61, v71
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v60, v59
	v_max3_f32 v60, v110, v106, v111
	v_max3_f32 v61, v107, v112, v108
.Ltmp20:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v49, v149 offset:224
	ds_load_u16_d16_hi v187, v149 offset:416
	ds_load_u16_d16_hi v42, v149 offset:448
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v51, v149 offset:736
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v189, v149 offset:928
	ds_load_u16_d16_hi v52, v149 offset:992
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v190, v149 offset:1184
	ds_load_u16_d16_hi v53, v149 offset:1248
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v191, v149 offset:1440
	ds_load_u16_d16_hi v54, v149 offset:1504
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v192, v149 offset:1696
	ds_load_u16_d16_hi v55, v149 offset:1760
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v193, v149 offset:1952
	ds_load_u16_d16_hi v56, v149 offset:2016
	ds_load_u16_d16 v58, v149 offset:2304
	ds_load_u16_d16_hi v57, v149 offset:2176
	ds_load_u16_d16 v81, v149 offset:2080
	ds_load_u16_d16 v73, v149 offset:2144
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s52, v79, v79
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v72
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v59, v60, v61, v59
	v_max_f32_e32 v61, v105, v105
.Ltmp22:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v72
	v_mul_f32_e32 v5, v5, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v13, v13, v72 :: v_dual_mov_b32 v60, v59
	v_mul_f32_e32 v15, v15, v72
	v_mul_f32_e32 v1, v1, v72
	v_mul_f32_e32 v3, v3, v72
	v_mul_f32_e32 v7, v7, v72
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v125, v62, v71
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v62, v99, v104, v100
.Ltmp26:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[33:40], v[1:8]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v89, v71
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[186:193], v[33:40], v[25:32]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v243
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v60
.Ltmp30:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v41, v149 offset:4416
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v60, v59
.Ltmp32:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v145, v67, v71
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v67, v115, v76, v116
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v59, v59, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v60, v59
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
.Ltmp40:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v142, v66, v71
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v91, v96, v92
	v_dual_max_f32 v59, v59, v60 :: v_dual_max_f32 v60, v150, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v150, v60, v59
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v101, v101
	v_max_f32_e32 v60, v61, v60
	v_max3_f32 v61, v102, v98, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v60, v61, v62, v60
	v_dual_max_f32 v62, v97, v97 :: v_dual_mov_b32 v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp46:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v192, v109, v150
	v_dual_sub_f32 v148, v69, v71 :: v_dual_sub_f32 v191, v108, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v113, v113, v150 :: v_dual_max_f32 v60, v60, v61
	v_sub_f32_e32 v186, v110, v150
	v_dual_sub_f32 v189, v106, v150 :: v_dual_sub_f32 v146, v68, v71
	v_sub_f32_e32 v187, v111, v150
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v188, v112, v150 :: v_dual_max_f32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp50:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v190, v107, v150 :: v_dual_mov_b32 v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v60, v60, v61 :: v_dual_max_f32 v61, v151, v151
.Ltmp53:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v151, v61, v60
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v61, v62, v61
	v_max3_f32 v62, v94, v90, v95
	v_max3_f32 v61, v62, v66, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v62, v61
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp57:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v205, v98, v151
	v_sub_f32_e32 v206, v99, v151
	v_sub_f32_e32 v193, v102, v151
	v_sub_f32_e32 v245, v101, v151
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v61, v61, v62 :: v_dual_sub_f32 v202, v103, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v203, v104, v151 :: v_dual_mov_b32 v62, v61
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp62:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v244, v100, v151 :: v_dual_max_f32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v62, v61
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v61, v61, v62 :: v_dual_max_f32 v62, v152, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v152, v62, v61
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v207, v90, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.h, v78.h
	v_mov_b16_e32 v90.l, v89.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v224, v91, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v90, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v90.h
	v_cmp_o_f32_e64 s58, v90, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v91, 1, v78
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v97, v152
	v_sub_f32_e32 v225, v92, v152
	v_sub_f32_e32 v246, v94, v152
	v_dual_sub_f32 v204, v105, v151 :: v_dual_sub_f32 v247, v95, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v90, v90, v91, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s58
	v_permlanex16_b32 v90, v89, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v97, v90, v89, v141
	v_perm_b32 v98, v90, v89, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v241
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.h, v78.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v89, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v120
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v90, s56
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v90.h
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v117, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s56, v90, v90
	v_and_b32_e32 v91, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v90, v91, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v90, v89, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v99, v90, v89, v141
	v_perm_b32 v100, v90, v89, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.h, v78.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s54
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v89, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s3
	v_cmp_o_f32_e64 s3, v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v90, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v90.h
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s54, v90, v90
	v_and_b32_e32 v91, 1, v78
	v_mov_b16_e32 v78.l, v79.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v90, v91, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v90.h, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v90, v89, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v90, v89, v141
	v_perm_b32 v102, v90, v89, v144
	v_mov_b16_e32 v89.h, v78.h
	v_mov_b16_e32 v89.l, v80.h
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v66, v62
	v_max3_f32 v66, v74, v114, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v89, 1, v89
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v62, v66, v67, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v80, v80, v89, 0x7fff
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v66, v62 :: v_dual_and_b32 v89, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v79, v79, v89, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v80.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp79:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v103, v80, v79, v141
	v_perm_b32 v104, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	v_mov_b32_e32 v124, v138
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v123
	v_mov_b32_e32 v123, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s51, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v78
	v_add3_u32 v80, v80, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s51
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v89, v80, v79, v141
	v_perm_b32 v90, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v122
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s48, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v78
	v_add3_u32 v80, v80, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s48
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v91, v80, v79, v141
	v_perm_b32 v92, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s47, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 1, v78
	v_add3_u32 v80, v80, v84, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v84, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s47
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v84, s22
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v66
.Ltmp81:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v94, v80, v79, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v62
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v62, v62, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v62
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v62, v62, v66
.Ltmp86:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v153, v153
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v248, v96, v152 :: v_dual_max_f32 v153, v66, v62
	v_sub_f32_e32 v226, v93, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v93, v80, v79, v141
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v75, v75, v153
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v83, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v227, v74, v153
	v_sub_f32_e32 v67, v117, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s16
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s44, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v78
	v_add3_u32 v80, v80, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s44
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v95, v80, v79, v141
	v_perm_b32 v96, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v86
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s43, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v78
	v_add3_u32 v80, v80, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s43
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v105, v80, v79, v141
	v_perm_b32 v106, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v88
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s40, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v78
	v_add3_u32 v80, v80, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s40
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v107, v80, v79, v141
	v_perm_b32 v108, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v142
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s3, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s39, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v78
	v_add3_u32 v80, v80, v82, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s39
	v_permlanex16_b32 v80, v79, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v109, v80, v79, v141
	v_perm_b32 v110, v80, v79, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v146
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v78.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v79, v79
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v148
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v78.l, v80.h
	v_cmp_o_f32_e64 s37, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v78, v80, v78, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v79.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v190
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s37
	v_permlanex16_b32 v79, v78, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v111, v79, v78, v141
	v_perm_b32 v112, v79, v78, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v186
	v_exp_f32_e32 v79, v189
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s31
	v_cndmask_b32_e64 v79, 0, v79, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp88:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v187
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v79, v79, v80
.Ltmp90:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v188
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s29
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v80, v82
.Ltmp94:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v113
	v_mov_b32_e32 v113, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s28
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v82, v83
.Ltmp96:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v79, v80, v82 :: v_dual_mov_b32 v80, v135
.Ltmp98:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v206
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s23
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s26
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp105:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v68, v76, v153 :: v_dual_mov_b32 v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v68
.Ltmp106:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp108:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v77, v153
	v_sub_f32_e32 v77, v115, v153
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s5
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v240
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v79, v78
.Ltmp110:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v74, v116, v153 :: v_dual_add_f32 v135, v78, v79
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v78, v193
	v_exp_f32_e32 v79, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s1
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v79, 0, v79, s27
	v_cndmask_b32_e64 v74, 0, v74, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp114:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v202
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s14
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v79, v79, v82
.Ltmp118:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp120:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v82, v83
.Ltmp122:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v204
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v83, v84
	v_add_f32_e32 v79, v82, v83
.Ltmp124:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v224
	v_exp_f32_e32 v83, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp127:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s24
	v_cndmask_b32_e64 v83, 0, v83, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v79, v78
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v137, v78, v79
.Ltmp134:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v246
	v_exp_f32_e32 v79, v207
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_e32 v66, v68, v66
.Ltmp136:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v79, 0, v79, s25
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
.Ltmp138:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v247
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s10
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v114, v153
	v_mov_b32_e32 v114, v71
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v79, v79, v82
.Ltmp140:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v82, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v76, v76
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp142:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s9
	v_cndmask_b32_e64 v76, 0, v76, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v82, v83
.Ltmp144:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v226
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v83
	v_add_f32_e32 v69, v82, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v69, v78, v69
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v78, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v78, v69
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v78
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v78, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v136, v69, v78
.Ltmp152:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v227
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s7
.Ltmp153:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v76
.Ltmp154:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s20
.Ltmp155:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v75, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v67, v69, v75
	v_add_f32_e32 v66, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v138, v66, v67
.Ltmp162:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v70, v70
	v_max_f32_e32 v125, v66, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v59, v70, v125
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v59, 0, v59, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v64
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v135, v80, v59
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v59, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v142, v59, v60
	v_max_f32_e32 v59, v63, v63
	v_max_f32_e32 v145, v59, v61
	v_max_f32_e32 v59, v240, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v146, v59, v62
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v59, v64, v142
	v_sub_f32_e32 v33, v240, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v148, v59
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v59, v63, v145 :: v_dual_mov_b32 v240, v146
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v202, v59
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v66, v149 offset:2368
	ds_load_u16_d16 v59, v149 offset:2560
	ds_load_u16_d16 v67, v149 offset:2624
	ds_load_u16_d16 v60, v149 offset:2816
	ds_load_u16_d16 v68, v149 offset:2880
	ds_load_u16_d16 v61, v149 offset:3072
	ds_load_u16_d16 v69, v149 offset:3136
	ds_load_u16_d16 v62, v149 offset:3328
	ds_load_u16_d16 v70, v149 offset:3392
	ds_load_u16_d16 v63, v149 offset:3584
	ds_load_u16_d16 v71, v149 offset:3648
	ds_load_u16_d16 v64, v149 offset:3840
	ds_load_u16_d16 v72, v149 offset:3904
	ds_load_u16_d16 v50, v149 offset:4608
	ds_load_u16_d16 v42, v149 offset:4672
	ds_load_u16_d16 v51, v149 offset:4864
	ds_load_u16_d16 v43, v149 offset:4928
	ds_load_u16_d16 v52, v149 offset:5120
	ds_load_u16_d16 v44, v149 offset:5184
	ds_load_u16_d16 v53, v149 offset:5376
	ds_load_u16_d16 v45, v149 offset:5440
	ds_load_u16_d16 v54, v149 offset:5632
	ds_load_u16_d16 v46, v149 offset:5696
	ds_load_u16_d16 v55, v149 offset:5888
	ds_load_u16_d16 v47, v149 offset:5952
	ds_load_u16_d16 v116, v149 offset:6464
	ds_load_u16_d16_hi v65, v149 offset:2240
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v66, v149 offset:2496
	ds_load_u16_d16 v74, v149 offset:2400
	ds_load_u16_d16 v82, v149 offset:2336
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v67, v149 offset:2752
	ds_load_u16_d16 v75, v149 offset:2656
	ds_load_u16_d16 v83, v149 offset:2592
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v60, v149 offset:2944
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v68, v149 offset:3008
	ds_load_u16_d16 v76, v149 offset:2912
	ds_load_u16_d16 v84, v149 offset:2848
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v61, v149 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v69, v149 offset:3264
	ds_load_u16_d16 v77, v149 offset:3168
	ds_load_u16_d16 v85, v149 offset:3104
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v62, v149 offset:3456
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v70, v149 offset:3520
	ds_load_u16_d16 v78, v149 offset:3424
	ds_load_u16_d16 v86, v149 offset:3360
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v63, v149 offset:3712
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v71, v149 offset:3776
	ds_load_u16_d16 v79, v149 offset:3680
	ds_load_u16_d16 v87, v149 offset:3616
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v64, v149 offset:3968
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v72, v149 offset:4032
	ds_load_u16_d16 v88, v149 offset:3872
	ds_load_u16_d16 v48, v149 offset:4096
	ds_load_u16_d16 v40, v149 offset:4160
	ds_load_u16_d16 v80, v149 offset:3936
	ds_load_u16_d16_hi v58, v149 offset:2432
	ds_load_u16_d16_hi v81, v149 offset:2208
	ds_load_u16_d16_hi v73, v149 offset:2272
	ds_load_u16_d16_hi v59, v149 offset:2688
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v82, v149 offset:2464
	ds_load_u16_d16_hi v74, v149 offset:2528
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v83, v149 offset:2720
	ds_load_u16_d16_hi v75, v149 offset:2784
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v84, v149 offset:2976
	ds_load_u16_d16_hi v76, v149 offset:3040
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v85, v149 offset:3232
	ds_load_u16_d16_hi v77, v149 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v86, v149 offset:3488
	ds_load_u16_d16_hi v78, v149 offset:3552
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v87, v149 offset:3744
	ds_load_u16_d16_hi v79, v149 offset:3808
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v149 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[97:104], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v71, v149 offset:4128
	ds_load_u16_d16 v186, v149 offset:4192
	ds_load_u16_d16 v49, v149 offset:4352
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v48, v149 offset:4224
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v80, v149 offset:4064
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v34, 0, v148, s1
	v_cndmask_b32_e64 v35, 0, v202, s3
	v_cndmask_b32_e64 v33, 0, v33, s5
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[97:104], v[17:24]
	v_mov_b32_e32 v70, v125
	v_dual_mov_b32 v64, v142 :: v_dual_mov_b32 v63, v145
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v137, v113, v34 :: v_dual_fmac_f32 v136, v123, v35
	v_fmac_f32_e32 v138, v124, v33
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[97:104], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v149 offset:6656
	ds_load_u16_d16 v117, v149 offset:6720
	ds_load_u16_d16 v82, v149 offset:6912
	ds_load_u16_d16 v118, v149 offset:6976
	ds_load_u16_d16 v83, v149 offset:7168
	ds_load_u16_d16 v119, v149 offset:7232
	ds_load_u16_d16 v84, v149 offset:7424
	ds_load_u16_d16 v120, v149 offset:7488
	ds_load_u16_d16 v85, v149 offset:7680
	ds_load_u16_d16 v121, v149 offset:7744
	ds_load_u16_d16 v86, v149 offset:7936
	ds_load_u16_d16 v122, v149 offset:8000
	ds_load_u16_d16_hi v40, v149 offset:4288
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[97:104], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v41, v149 offset:4544
	ds_load_u16_d16 v187, v149 offset:4448
	ds_load_u16_d16 v72, v149 offset:4384
	ds_load_u16_d16_hi v50, v149 offset:4736
	ds_load_u16_d16_hi v42, v149 offset:4800
	ds_load_u16_d16 v188, v149 offset:4704
	ds_load_u16_d16 v73, v149 offset:4640
	ds_load_u16_d16_hi v51, v149 offset:4992
	ds_load_u16_d16_hi v43, v149 offset:5056
	ds_load_u16_d16 v189, v149 offset:4960
	ds_load_u16_d16 v74, v149 offset:4896
	ds_load_u16_d16_hi v52, v149 offset:5248
	ds_load_u16_d16_hi v44, v149 offset:5312
	ds_load_u16_d16 v190, v149 offset:5216
	ds_load_u16_d16 v75, v149 offset:5152
	ds_load_u16_d16_hi v53, v149 offset:5504
	ds_load_u16_d16_hi v45, v149 offset:5568
	ds_load_u16_d16 v191, v149 offset:5472
	ds_load_u16_d16 v76, v149 offset:5408
	ds_load_u16_d16_hi v54, v149 offset:5760
	ds_load_u16_d16_hi v46, v149 offset:5824
	ds_load_u16_d16 v192, v149 offset:5728
	ds_load_u16_d16 v77, v149 offset:5664
	ds_load_u16_d16_hi v55, v149 offset:6016
	ds_load_u16_d16_hi v47, v149 offset:6080
	ds_load_u16_d16 v79, v149 offset:6144
	ds_load_u16_d16 v115, v149 offset:6208
	ds_load_u16_d16 v193, v149 offset:5984
	ds_load_u16_d16 v78, v149 offset:5920
	ds_load_u16_d16_hi v49, v149 offset:4480
	ds_load_u16_d16_hi v71, v149 offset:4256
	ds_load_u16_d16_hi v186, v149 offset:4320
	ds_load_u16_d16 v80, v149 offset:6400
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v72, v149 offset:4512
	ds_load_u16_d16_hi v187, v149 offset:4576
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v73, v149 offset:4768
	ds_load_u16_d16_hi v188, v149 offset:4832
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v74, v149 offset:5024
	ds_load_u16_d16_hi v189, v149 offset:5088
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v75, v149 offset:5280
	ds_load_u16_d16_hi v190, v149 offset:5344
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v76, v149 offset:5536
	ds_load_u16_d16_hi v191, v149 offset:5600
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v77, v149 offset:5792
	ds_load_u16_d16_hi v192, v149 offset:5856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v115, v149 offset:6336
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v78, v149 offset:6048
	ds_load_u16_d16_hi v193, v149 offset:6112
	ds_load_u16_d16 v97, v149 offset:6176
	ds_load_u16_d16 v241, v149 offset:6240
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v80, v149 offset:6528
	ds_load_u16_d16_hi v116, v149 offset:6592
	ds_load_u16_d16 v242, v149 offset:6496
	ds_load_u16_d16 v98, v149 offset:6432
	ds_load_u16_d16_hi v81, v149 offset:6784
	ds_load_u16_d16_hi v117, v149 offset:6848
	ds_load_u16_d16 v243, v149 offset:6752
	ds_load_u16_d16 v99, v149 offset:6688
	ds_load_u16_d16_hi v82, v149 offset:7040
	ds_load_u16_d16_hi v118, v149 offset:7104
	ds_load_u16_d16 v244, v149 offset:7008
	ds_load_u16_d16 v100, v149 offset:6944
	ds_load_u16_d16_hi v83, v149 offset:7296
	ds_load_u16_d16_hi v119, v149 offset:7360
	ds_load_u16_d16 v245, v149 offset:7264
	ds_load_u16_d16 v101, v149 offset:7200
	ds_load_u16_d16_hi v84, v149 offset:7552
	ds_load_u16_d16_hi v120, v149 offset:7616
	ds_load_u16_d16 v246, v149 offset:7520
	ds_load_u16_d16 v102, v149 offset:7456
	ds_load_u16_d16_hi v85, v149 offset:7808
	ds_load_u16_d16_hi v121, v149 offset:7872
	ds_load_u16_d16 v247, v149 offset:7776
	ds_load_u16_d16 v103, v149 offset:7712
	ds_load_u16_d16_hi v86, v149 offset:8064
	ds_load_u16_d16_hi v122, v149 offset:8128
	ds_load_u16_d16 v248, v149 offset:8032
	ds_load_u16_d16 v104, v149 offset:7968
	ds_load_u16_d16_hi v79, v149 offset:6272
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v97, v149 offset:6304
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v241, v149 offset:6368
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v98, v149 offset:6560
	ds_load_u16_d16_hi v242, v149 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v149 offset:6816
	ds_load_u16_d16_hi v243, v149 offset:6880
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v100, v149 offset:7072
	ds_load_u16_d16_hi v244, v149 offset:7136
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v101, v149 offset:7328
	ds_load_u16_d16_hi v245, v149 offset:7392
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v102, v149 offset:7584
	ds_load_u16_d16_hi v246, v149 offset:7648
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v103, v149 offset:7840
	ds_load_u16_d16_hi v247, v149 offset:7904
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v104, v149 offset:8096
	ds_load_u16_d16_hi v248, v149 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[48:55], v[89:96], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[40:47], v[89:96], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[71:78], v[89:96], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[186:193], v[89:96], v[1:8]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[79:86], v[105:112], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[115:122], v[105:112], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[105:112], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[241:248], v[105:112], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	scratch_load_b32 v63, off, off          ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v34, 2, v0
	v_readlane_b32 s16, v255, 0
	v_and_b32_e32 v65, 16, v0
	v_and_b32_e32 v66, 15, v0
	v_and_b32_e32 v36, 0x78, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v34, v66, 3, 0
	v_add_nc_u32_e32 v35, 0, v36
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s2, 0x76543210
	ds_store_2addr_b64 v35, v[135:136], v[137:138] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fixup_f32 v18, v34, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v20, v33, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v17, s0
	v_cndmask_b32_e64 v17, 0, v18, s0
	v_cndmask_b32_e64 v18, 0, v19, s0
	v_cndmask_b32_e64 v19, 0, v20, s0
	v_cndmask_b32_e64 v20, 0, v21, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v22, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s4, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v23, s0
	v_cndmask_b32_e64 v23, 0, v24, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s4
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s5
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s4, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s4
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
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
	v_lshrrev_b32_e32 v32, 1, v65
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v19, s61
	v_cndmask_b32_e64 v6, v18, v17, s61
	v_cndmask_b32_e64 v7, v17, v18, s61
	v_cndmask_b32_e64 v13, v20, v22, s61
	v_cndmask_b32_e64 v16, v12, v9, s61
	v_cndmask_b32_e64 v9, v9, v12, s61
	v_cndmask_b32_e64 v12, v11, v10, s61
	v_cndmask_b32_e64 v10, v10, v11, s61
	v_cndmask_b32_e64 v17, v0, v1, s61
	v_cndmask_b32_e64 v0, v1, v0, s61
	.loc	1 843 24                        ; attention.py:843:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s71, v63
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v21, v23, s61
	v_cndmask_b32_e64 v1, v2, v3, s61
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v18, v3, v2, s61
	v_permlanex16_b32 v2, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s61
	v_cndmask_b32_e64 v8, v22, v20, s61
	v_permlanex16_b32 v9, v9, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v23, v21, s61
	v_permlanex16_b32 v3, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s71, v33
	v_cmp_gt_i32_e64 s3, s71, v32
	v_cmp_gt_i32_e64 s0, s71, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v141
	v_perm_b32 v11, v11, v12, v144
	v_perm_b32 v12, v13, v17, v141
	v_perm_b32 v13, v13, v17, v144
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v141
	v_perm_b32 v1, v2, v4, v144
	v_perm_b32 v4, v5, v8, v141
	v_perm_b32 v5, v5, v8, v144
	v_perm_b32 v8, v9, v16, v141
	v_perm_b32 v9, v9, v16, v144
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s71, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v141
	v_perm_b32 v3, v3, v6, v144
	v_perm_b32 v6, v7, v14, v141
	v_perm_b32 v7, v7, v14, v144
	v_perm_b32 v14, v15, v18, v141
	v_perm_b32 v15, v15, v18, v144
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s16, vcc_lo
	s_and_b32 s3, s16, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s16, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s16, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[80:83], 0 offen
	buffer_store_b128 v[4:7], v17, s[80:83], 0 offen
	buffer_store_b128 v[8:11], v18, s[80:83], 0 offen
	buffer_store_b128 v[12:15], v19, s[80:83], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp163:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20960
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 8
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
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
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
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
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
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
