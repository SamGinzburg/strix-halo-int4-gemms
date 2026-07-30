	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s20, s[0:1], 0x84
	s_load_b32 s71, s[0:1], 0x60
.Ltmp0:
	.loc	1 584 86 prologue_end           ; attention.py:584:86
	v_and_b32_e32 v37, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s5, s2, 6
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v37
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s82, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s5, v2
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s2, s5, s82
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v39, v0, 4, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v33, 0x60, v0
	v_and_b32_e32 v34, 15, v0
	v_and_b32_e32 v63, 16, v0
	v_lshlrev_b32_e32 v49, 2, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v38, 1, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[121:122], null, s71, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s71, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s9, s9, 0xffff
	v_cmp_eq_u32_e64 s69, 0, v63
	v_lshlrev_b32_e32 v50, 3, v34
	v_and_or_b32 v6, v38, 30, v39
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s71, s2, v[121:122]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v6, 2, v6
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v8, 4, v6
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v33
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s5, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s5, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, s20
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s20
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, 64
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v34
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s8, s8, 0x200
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s8, s8, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s83, s9, 0x7fffffc0
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s5, v1
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s100, s8, s10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, 0x200, v7
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s100, s100, 63
	s_mov_b32 s8, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s100
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
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v35, 3, v34
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v36, 2, v0
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
	v_and_b32_e32 v136, 0x5040504, v2
	v_and_b32_e32 v139, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr139
.LBB0_3:                                ; %Flow399
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s70, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v48, 0x78, v0
	v_or_b32_e32 v64, s2, v1
	s_and_not1_b32 vcc_lo, exec_lo, s8
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
	v_mov_b32_e32 v133, v8
	v_mov_b32_e32 v131, v8
	v_mov_b32_e32 v132, v8
	v_mov_b32_e32 v130, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v16, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v64
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 24, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s16
	v_writelane_b32 v255, s16, 0
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v7, 0x7c, v49
	v_bfe_i32 v15, v0, 5, 1
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_lshlrev_b32 v19, 4, v0
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_and_b32 v3, 24, v38
	v_and_b32_e32 v4, 0x70, v0
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_lshlrev_b32 v5, 9, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s85, s13, 0xffff
	s_mov_b32 s84, s12
	v_lshlrev_b32_e32 v6, 6, v37
	buffer_load_u16 v35, v1, s[84:87], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v122, v42, v46, s69
	v_cndmask_b32_e64 v125, v41, v45, s69
	v_cndmask_b32_e64 v126, v46, v42, s69
	v_cndmask_b32_e64 v129, v45, v41, s69
	v_lshrrev_b32_e32 v41, 3, v33
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_and_b32 v42, 28, v0
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_lshlrev_b32 v8, 5, v0
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v9, 2, v33
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_bfe_i32 v37, v0, 3, 1
	v_lshl_or_b32 v33, v33, 4, v7
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v52, 0x2040, v15
	v_dual_mov_b32 v18, 0x7632 :: v_dual_lshlrev_b32 v1, 3, v0
	v_cndmask_b32_e64 v123, v44, v47, s69
	v_cndmask_b32_e64 v124, v40, v43, s69
	v_cndmask_b32_e64 v127, v47, v44, s69
	v_cndmask_b32_e64 v128, v43, v40, s69
	v_or_b32_e32 v144, s82, v39
	v_and_b32_e32 v39, 0x1b8, v49
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_lshlrev_b32 v40, 5, v63
	v_lshl_add_u32 v145, v34, 1, 0
	v_mov_b32_e32 v49, 0xff800000
	v_xor_b32_e32 v150, v19, v2
	v_lshl_or_b32 v151, v34, 5, v3
	v_and_or_b32 v45, 0x1c00, v5, v6
	v_cndmask_b32_e64 v54, 0x1054, v16, s69
	v_mov_b32_e32 v19, v17
	v_lshrrev_b32_e32 v34, 1, v4
	v_lshl_or_b32 v44, v4, 6, v50
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v36, 3, v48
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v46, 0x60, v8
	v_lshl_or_b32 v47, v42, 7, v9
	v_xor_b32_e32 v176, v33, v41
	v_and_or_b32 v33, 0x1020, v37, v52
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v11, 4, v0
	v_cndmask_b32_e64 v55, 0x3276, v18, s69
	v_mov_b32_e32 v18, v17
	v_xor_b32_e32 v34, v44, v34
	v_or3_b32 v175, v45, v40, v39
	v_lshl_or_b32 v37, v54, 8, v54
	v_or3_b32 v177, v47, v46, v42
	v_xor_b32_e32 v42, v33, v46
	v_mul_lo_u32 v33, s19, v36
	v_cndmask_b32_e64 v10, 0x1020, 0, vcc_lo
	v_bfe_i32 v12, v0, 2, 1
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v13, 8, v0
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_lshlrev_b32 v14, 6, v63
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v38, 0x80, v38
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v134, 56, v1
	v_lshl_add_u32 v53, v11, 9, 0
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v37, 0x540054, v37
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v185, 0, v34
	v_xor_b32_e32 v34, 8, v175
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v64, off
	scratch_store_b32 off, v50, off offset:4
	v_or_b32_e32 v43, s5, v36
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v48, 0x310, v1
	v_and_or_b32 v50, 0x2040, v12, v10
	v_lshl_or_b32 v51, v13, 4, v14
	v_lshl_or_b32 v39, v55, 8, v55
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v192, 0, v34
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[135:136], null, s70, v36, v[134:135]
	v_add3_u32 v36, v53, v38, v42
	v_lshl_or_b32 v37, v37, 4, v37
	v_lshl_add_u32 v34, s19, 4, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v59, s20, v43
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v39, 0x760076, v39
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v56, 16, v43
	v_or_b32_e32 v57, 32, v43
	v_or_b32_e32 v58, 48, v43
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v43
	v_xor_b32_e32 v43, 8, v150
	v_xor_b32_e32 v60, 8, v151
	v_or3_b32 v178, v50, v51, v48
	v_xor_b32_e32 v40, 16, v151
	v_xor_b32_e32 v41, 24, v151
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_and_b32_e32 v136, 0x5040504, v37
	v_add_nc_u32_e32 v210, v36, v63
	v_mad_u64_u32 v[36:37], null, s19, 48, v[33:34]
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v45, s20, v57
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v44, s20, v56
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v46, s20, v58
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v180, s7, v59
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v181, 0, v43
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v182, 0, v60
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v183, 0, v40
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v184, 0, v41
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v64, 1, v134
	v_or_b32_e32 v65, 2, v134
	v_or_b32_e32 v170, 3, v134
	v_or_b32_e32 v171, 4, v134
	v_or_b32_e32 v172, 5, v134
	v_or_b32_e32 v173, 6, v134
	v_or_b32_e32 v174, 7, v134
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v179, s6, v59
	v_xor_b32_e32 v40, 16, v175
	v_xor_b32_e32 v41, 24, v175
	v_xor_b32_e32 v43, 32, v175
	v_xor_b32_e32 v47, 40, v175
	v_xor_b32_e32 v48, 48, v175
	v_xor_b32_e32 v50, 56, v175
	v_xor_b32_e32 v51, 0x810, v176
	v_xor_b32_e32 v52, 4, v177
	v_xor_b32_e32 v54, 8, v177
	v_xor_b32_e32 v55, 12, v177
	v_xor_b32_e32 v56, 16, v177
	v_xor_b32_e32 v57, 20, v177
	v_xor_b32_e32 v58, 24, v177
	v_xor_b32_e32 v59, 28, v177
	v_xor_b32_e32 v60, 32, v178
	v_xor_b32_e32 v61, 64, v178
	v_xor_b32_e32 v62, 0x60, v178
	v_lshl_or_b32 v38, v39, 4, v39
	v_lshl_add_u32 v37, s19, 5, v33
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s12, s0, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s19, s5
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s18, s1
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s5, s17, s12
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v187, s7, v44
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v194, 0, v41
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v189, s7, v45
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v196, 0, v47
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v191, s7, v46
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v198, 0, v50
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v193, 0, v40
	v_dual_mov_b32 v130, v17 :: v_dual_add_nc_u32 v195, 0, v43
	v_dual_mov_b32 v132, v17 :: v_dual_add_nc_u32 v197, 0, v48
	v_dual_mov_b32 v131, v17 :: v_dual_add_nc_u32 v200, 0, v52
	v_dual_mov_b32 v133, v17 :: v_dual_add_nc_u32 v202, 0, v55
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s70, v134
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v186, s6, v44
	v_subrev_nc_u32_e32 v188, s6, v45
	v_subrev_nc_u32_e32 v190, s6, v46
	v_add_nc_u32_e32 v199, 0, v51
	v_add_nc_u32_e32 v201, 0, v54
	v_add_nc_u32_e32 v203, 0, v56
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v57
	v_add_nc_u32_e32 v205, 0, v58
	v_add_nc_u32_e32 v206, 0, v59
	v_add_nc_u32_e32 v207, 0, v60
	v_add_nc_u32_e32 v208, 0, v61
	v_add_nc_u32_e32 v209, 0, v62
	v_and_b32_e32 v139, 0x7060706, v38
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v211, v33, v134
	v_add_nc_u32_e32 v254, v34, v134
	v_add_nc_u32_e32 v142, v34, v64
	v_add_nc_u32_e32 v141, v34, v65
	v_add_nc_u32_e32 v138, v34, v170
	v_add_nc_u32_e32 v140, v34, v171
	v_add_nc_u32_e32 v137, v34, v172
	v_add_nc_u32_e32 v143, v34, v173
	v_add_nc_u32_e32 v168, v34, v174
	v_add_nc_u32_e32 v220, v37, v134
	v_add_nc_u32_e32 v221, v37, v64
	v_add_nc_u32_e32 v222, v37, v65
	v_add_nc_u32_e32 v223, v37, v170
	v_add_nc_u32_e32 v224, v37, v171
	v_add_nc_u32_e32 v225, v37, v172
	v_add_nc_u32_e32 v226, v37, v173
	v_add_nc_u32_e32 v169, v37, v174
	v_add_nc_u32_e32 v236, v36, v134
	v_add_nc_u32_e32 v237, v36, v64
	v_add_nc_u32_e32 v238, v36, v65
	v_add_nc_u32_e32 v240, v36, v170
	v_add_nc_u32_e32 v241, v36, v171
	v_add_nc_u32_e32 v242, v36, v172
	v_add_nc_u32_e32 v243, v36, v173
	v_add_nc_u32_e32 v244, v36, v174
	v_mov_b16_e64 v248.l, 0
	s_mov_b32 s72, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s2, s16, 0x3fb8aa3b
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 vcc_hi, s1, s5
	s_lshl_b32 s101, s70, 4
	s_lshl_b32 s102, s70, 5
	s_mov_b32 s104, 0x76543210
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
	s_add_i32 s103, vcc_hi, s3
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v245, 16, v35
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s68, s83, s82
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v37, 0, v150
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[33:34], null, s68, s71, v[121:122]
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 vcc_hi, s103, s83
	.loc	1 649 37                        ; attention.py:649:37
	v_or_b32_e32 v106, 48, v144
	v_or_b32_e32 v98, 32, v144
	v_or_b32_e32 v99, 34, v144
	v_or_b32_e32 v100, 36, v144
	v_or_b32_e32 v101, 38, v144
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v106, v106, s83, 1
	v_add_lshl_u32 v98, v98, s83, 1
	v_add_lshl_u32 v99, v99, s83, 1
	v_add_lshl_u32 v100, v100, s83, 1
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[33:36], v33, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v101, v101, s83, 1
	v_or_b32_e32 v102, 40, v144
	v_or_b32_e32 v103, 42, v144
	v_or_b32_e32 v104, 44, v144
	v_or_b32_e32 v105, 46, v144
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v102, v102, s83, 1
	v_add_lshl_u32 v103, v103, s83, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v104, v104, s83, 1
	v_add_lshl_u32 v105, v105, s83, 1
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v181, v[35:36]
	v_add_nc_u32_e32 v33, 0, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[58:61], v183 offset1:1
	ds_load_2addr_stride64_b64 v[90:93], v183 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[50:53], v33 offset1:1
	ds_load_2addr_stride64_b64 v[82:85], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[54:57], v182 offset1:1
	ds_load_2addr_stride64_b64 v[86:89], v182 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s72 :: v_dual_mov_b32 v38, s77
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v35, s74
	v_mov_b32_e32 v40, s79
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v37, s76
	v_mov_b32_e32 v39, s78
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[62:65], v184 offset1:1
	ds_load_2addr_stride64_b64 v[94:97], v184 offset0:2 offset1:3
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x6
	buffer_load_u16 v98, v98, s[92:95], 0 offen
	buffer_load_u16 v99, v99, s[92:95], 0 offen
	buffer_load_u16 v100, v100, s[92:95], 0 offen
	buffer_load_u16 v101, v101, s[92:95], 0 offen
	buffer_load_u16 v102, v102, s[92:95], 0 offen
	buffer_load_u16 v103, v103, s[92:95], 0 offen
	buffer_load_u16 v104, v104, s[92:95], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[128:129], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v105, v105, s[92:95], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[54:55], v[126:127], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[58:59], v[124:125], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[62:63], v[122:123], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v81, v41
	v_cvt_f32_i32_e32 v80, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v79, v43
	v_cvt_f32_i32_e32 v78, v44
	v_cvt_f32_i32_e32 v77, v45
	v_cvt_f32_i32_e32 v76, v46
	v_cvt_f32_i32_e32 v74, v47
	v_cvt_f32_i32_e32 v72, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[52:53], v[128:129], v[33:40] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v78, v245, v78
	v_mul_f32_e32 v76, v245, v76
	v_mul_f32_e32 v80, v245, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[56:57], v[126:127], v[41:48] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v81, v245, v81
	v_mul_f32_e32 v74, v245, v74
	v_mul_f32_e32 v72, v245, v72
	v_mul_f32_e32 v77, v245, v77
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[60:61], v[124:125], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[64:65], v[122:123], v[41:48] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v75, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v42
	v_cvt_f32_i32_e32 v71, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v44
	v_cvt_f32_i32_e32 v70, v45
	v_cvt_f32_i32_e32 v69, v46
	v_cvt_f32_i32_e32 v67, v47
	v_cvt_f32_i32_e32 v65, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[82:83], v[128:129], v[33:40] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v82, vcc_hi, v169, 1
	v_add_lshl_u32 v83, vcc_hi, v237, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v245, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[126:127], v[41:48] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v86, vcc_hi, v244, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v73, v245, v73
	v_mul_f32_e32 v69, v245, v69
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[124:125], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[94:95], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v94, 24, v144
	v_or_b32_e32 v95, 26, v144
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v68, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v42
	v_cvt_f32_i32_e32 v64, v43
	v_cvt_f32_i32_e32 v63, v44
	v_cvt_f32_i32_e32 v62, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v59, v47
	v_cvt_f32_i32_e32 v57, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[84:85], v[128:129], v[33:40] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v134
	.loc	1 683 36                        ; attention.py:683:36
	v_add_nc_u32_e32 v37, 5, v211
	v_add_nc_u32_e32 v34, 2, v211
	v_add_nc_u32_e32 v36, 3, v211
	v_add_nc_u32_e32 v35, 1, v211
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v33, v179
	v_cmp_ge_i32_e64 s6, v33, v186
	v_cmp_ge_i32_e64 s12, v33, v188
	v_cmp_ge_i32_e64 s3, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v33, v180
	v_cmp_le_i32_e64 s7, v33, v187
	v_cmp_le_i32_e64 s14, v33, v189
	v_cmp_le_i32_e64 s11, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, 1, v134
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v37, vcc_hi, v37, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s5
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v34, vcc_hi, v34, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, vcc_lo, s1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v36, vcc_hi, v36, 1
	v_add_lshl_u32 v35, vcc_hi, v35, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[88:89], v[126:127], v[41:48] neg_lo:[1,1,0]
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s6, s7
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v33, v179
	v_cmp_ge_i32_e64 s10, v33, v186
	v_cmp_ge_i32_e64 s17, v33, v188
	v_cmp_ge_i32_e64 s15, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v33, v180
	v_cmp_le_i32_e64 s13, v33, v187
	v_cmp_le_i32_e64 s18, v33, v189
	v_cmp_le_i32_e64 s16, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, 2, v134
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s8, s9
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[92:93], v[124:125], v[41:48] neg_lo:[1,1,0]
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s10, s13
	s_and_b32 s6, vcc_lo, s6
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s12, s14
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[96:97], v[122:123], v[41:48] neg_lo:[1,1,0]
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s17, s18
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v84, vcc_hi, v240, 1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s20, v33, v179
	v_cmp_ge_i32_e64 s24, v33, v186
	v_cmp_ge_i32_e64 s29, v33, v188
	v_cmp_ge_i32_e64 s19, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v33, v180
	v_cmp_le_i32_e64 s25, v33, v187
	v_cmp_le_i32_e64 s30, v33, v189
	v_cmp_le_i32_e64 s27, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v170
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s20, s22
	s_and_b32 s20, vcc_lo, s8
	s_and_b32 s5, vcc_lo, s5
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s20
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v33, v179
	v_cmp_ge_i32_e64 s26, v33, v186
	v_cmp_ge_i32_e64 s34, v33, v188
	v_cmp_ge_i32_e64 s31, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s23, v33, v180
	v_cmp_le_i32_e64 s28, v33, v187
	v_cmp_le_i32_e64 s35, v33, v189
	v_cmp_le_i32_e64 s33, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v171
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s21, s23
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, vcc_lo, s9
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v60, v41
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v33, v179
	v_cmp_ge_i32_e64 s42, v33, v186
	v_cmp_ge_i32_e64 s38, v33, v188
	v_cmp_ge_i32_e64 s36, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s48, v33, v180
	v_cmp_le_i32_e64 s44, v33, v187
	v_cmp_le_i32_e64 s39, v33, v189
	v_cmp_le_i32_e64 s37, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v172
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s21
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s46, s48
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v41, vcc_hi, v142, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, vcc_lo, s8
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v33, v179
	v_cmp_ge_i32_e64 s47, v33, v186
	v_cmp_ge_i32_e64 s43, v33, v188
	v_cmp_ge_i32_e64 s40, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s51, v33, v180
	v_cmp_le_i32_e64 s49, v33, v187
	v_cmp_le_i32_e64 s45, v33, v189
	v_cmp_le_i32_e64 s41, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v173
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s50, s51
	s_and_b32 s13, s26, s28
	s_and_b32 s22, vcc_lo, s22
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v54, v45
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v33, v179
	v_cmp_ge_i32_e64 s56, v33, v186
	v_cmp_ge_i32_e64 s54, v33, v188
	v_cmp_ge_i32_e64 s52, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s57, v33, v180
	v_cmp_le_i32_e64 s58, v33, v187
	v_cmp_le_i32_e64 s59, v33, v189
	v_cmp_le_i32_e64 s53, v33, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s83, v174
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v38, 0x80000000, v37, s22
	v_add_nc_u32_e32 v37, 7, v211
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s55, s57
	s_and_b32 s7, s24, s25
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s60, v33, v179
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s64, v33, v180
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s61, v33, v186
	v_cmp_ge_i32_e64 s62, v33, v188
	v_cmp_ge_i32_e64 s63, v33, v190
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s65, v33, v187
	v_cmp_le_i32_e64 s66, v33, v189
	v_cmp_le_i32_e64 s67, v33, v191
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v33, vcc_hi, v211, 1
	v_add_lshl_u32 v37, vcc_hi, v37, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s60, s64
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s23, vcc_lo, s23
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s23
	s_clause 0x5
	buffer_load_u16 v33, v33, s[88:91], 0 offen
	buffer_load_u16 v34, v34, s[88:91], 0 offen
	buffer_load_u16 v37, v37, s[88:91], 0 offen
	buffer_load_u16 v38, v38, s[88:91], 0 offen
	buffer_load_u16 v39, v36, s[88:91], 0 offen
	buffer_load_u16 v40, v35, s[88:91], 0 offen
	v_add_nc_u32_e32 v35, 6, v211
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s24, vcc_lo, s10
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v45, vcc_hi, v143, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s25, vcc_lo, s13
	s_and_b32 s13, s56, s58
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v35, vcc_hi, v35, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v55, v44
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v44, 0x80000000, v41, s24
	v_add_lshl_u32 v41, vcc_hi, v138, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, vcc_lo, s13
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s9
	v_cndmask_b32_e64 v45, 0x80000000, v45, s13
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v56, v43
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v43, 0x80000000, v41, s25
	v_add_lshl_u32 v41, vcc_hi, v137, 1
	s_clause 0x1
	buffer_load_u16 v35, v35, s[88:91], 0 offen
	buffer_load_u16 v45, v45, s[88:91], 0 offen
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s26, s47, s49
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v36, vcc_hi, v141, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s26, vcc_lo, s26
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v58, v42
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v42, 0x80000000, v41, s26
	v_add_lshl_u32 v41, vcc_hi, v168, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s61, s65
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s28, vcc_lo, s28
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s7
	v_cndmask_b32_e64 v41, 0x80000000, v41, s28
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s42, s44
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v53, v46
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, vcc_lo, s10
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v46, vcc_hi, v221, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v52, v47
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v47, vcc_hi, v223, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v51, v48
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s18, s34, s35
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v48, vcc_hi, v225, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s29, s30
	s_and_b32 s35, s43, s45
	s_and_b32 s29, vcc_lo, s14
	s_and_b32 s34, s38, s39
	s_and_b32 s42, s62, s66
	s_and_b32 s38, vcc_lo, s18
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v85, vcc_hi, v242, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s39, s54, s59
	s_and_b32 s3, s3, s11
	s_and_b32 s11, s15, s16
	s_and_b32 s15, s19, s27
	s_and_b32 s16, s31, s33
	s_and_b32 s19, s36, s37
	s_and_b32 s36, s40, s41
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v107, 0x80000000, v46, s29
	v_add_lshl_u32 v46, vcc_hi, v222, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s40, vcc_lo, s35
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v108, 0x80000000, v47, s38
	v_add_lshl_u32 v47, vcc_hi, v224, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s42, vcc_lo, s42
	s_and_b32 s12, vcc_lo, s12
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v109, 0x80000000, v48, s40
	v_add_lshl_u32 v48, vcc_hi, v226, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s35, vcc_lo, s39
	s_and_b32 s37, vcc_lo, s11
	s_and_b32 s39, vcc_lo, s16
	s_and_b32 s41, vcc_lo, s36
	s_and_b32 s30, vcc_lo, s17
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v111, 0x80000000, v82, s42
	v_add_lshl_u32 v82, vcc_hi, v236, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, vcc_lo, s34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v110, 0x80000000, v83, s37
	v_add_lshl_u32 v83, vcc_hi, v238, 1
	v_cndmask_b32_e64 v112, 0x80000000, v84, s39
	v_add_lshl_u32 v84, vcc_hi, v241, 1
	v_cndmask_b32_e64 v113, 0x80000000, v85, s41
	v_add_lshl_u32 v85, vcc_hi, v243, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s43, s52, s53
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v46, 0x80000000, v46, s30
	v_cndmask_b32_e64 v47, 0x80000000, v47, s33
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s27, vcc_lo, s3
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v48, 0x80000000, v48, s35
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, vcc_lo, s15
	s_and_b32 s34, vcc_lo, s19
	s_and_b32 s36, vcc_lo, s43
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v82, 0x80000000, v82, s27
	v_cndmask_b32_e64 v83, 0x80000000, v83, s31
	v_cndmask_b32_e64 v84, 0x80000000, v84, s34
	v_cndmask_b32_e64 v85, 0x80000000, v85, s36
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s44, s63, s67
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v94, v94, s83, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s43, vcc_lo, s44
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v95, v95, s83, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v118, 0x80000000, v86, s43
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v106, v106, s[92:95], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x7
	buffer_load_u16 v119, v111, s[88:91], 0 offen
	buffer_load_u16 v249, v109, s[88:91], 0 offen
	buffer_load_u16 v251, v108, s[88:91], 0 offen
	buffer_load_u16 v253, v107, s[88:91], 0 offen
	buffer_load_u16 v118, v118, s[88:91], 0 offen
	buffer_load_u16 v120, v113, s[88:91], 0 offen
	buffer_load_u16 v250, v112, s[88:91], 0 offen
	buffer_load_u16 v252, v110, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_or_b32_e32 v107, 50, v144
	s_clause 0x1
	buffer_load_u16 v94, v94, s[92:95], 0 offen
	buffer_load_u16 v95, v95, s[92:95], 0 offen
	v_or_b32_e32 v96, 28, v144
	v_or_b32_e32 v97, 30, v144
	v_add_lshl_u32 v107, v107, s83, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v66, v245, v66
	v_mul_f32_e32 v68, v245, v68
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v96, v96, s83, 1
	v_add_lshl_u32 v97, v97, s83, 1
	buffer_load_u16 v113, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 52, v144
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v60, v245, v60
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1
	buffer_load_u16 v96, v96, s[92:95], 0 offen
	buffer_load_u16 v97, v97, s[92:95], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v245, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v107, v107, s83, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v58, v245, v58
	v_mul_f32_e32 v56, v245, v56
	v_mul_f32_e32 v52, v245, v52
	v_mul_f32_e32 v64, v245, v64
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v112, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 54, v144
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v65, v245, v65
	v_mul_f32_e32 v57, v245, v57
	v_mul_f32_e32 v54, v245, v54
	v_mul_f32_e32 v61, v245, v61
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v107, v107, s83, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v53, v245, v53
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v111, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 56, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v107, v107, s83, 1
	buffer_load_u16 v110, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 58, v144
	v_add_lshl_u32 v107, v107, s83, 1
	buffer_load_u16 v109, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 60, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v107, v107, s83, 1
	buffer_load_u16 v108, v107, s[92:95], 0 offen
	v_or_b32_e32 v107, 62, v144
	v_add_lshl_u32 v107, v107, s83, 1
	buffer_load_u16 v107, v107, s[92:95], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(27)
	v_cndmask_b16 v33.l, 0xff80, v33.l, s1
	s_waitcnt vmcnt(26)
	v_cndmask_b16 v33.h, 0xff80, v34.l, s5
	v_add_nc_u32_e32 v34, 4, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v248.h, v33.l
	v_add_lshl_u32 v34, vcc_hi, v34, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s8
	buffer_load_u16 v34, v34, s[88:91], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v34.h, 0xff80, v35.l, s9
	v_add_lshl_u32 v35, vcc_hi, v254, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	s_clause 0x5
	buffer_load_u16 v35, v35, s[88:91], 0 offen
	buffer_load_u16 v36, v36, s[88:91], 0 offen
	buffer_load_u16 v41, v41, s[88:91], 0 offen
	buffer_load_u16 v42, v42, s[88:91], 0 offen
	buffer_load_u16 v43, v43, s[88:91], 0 offen
	buffer_load_u16 v44, v44, s[88:91], 0 offen
	v_cndmask_b16 v153.h, 0xff80, v119.l, s42
	v_cndmask_b16 v153.l, 0xff80, v249.l, s40
	v_cndmask_b16 v152.h, 0xff80, v251.l, s38
	v_cndmask_b16 v152.l, 0xff80, v253.l, s29
	v_cndmask_b16 v120.h, 0xff80, v118.l, s43
	v_cndmask_b16 v120.l, 0xff80, v120.l, s41
	v_cndmask_b16 v119.h, 0xff80, v250.l, s39
	v_cndmask_b16 v119.l, 0xff80, v252.l, s37
	v_cndmask_b16 v34.l, 0xff80, v34.l, s8
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v35.l, 0xff80, v35.l, s6
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v35.h, 0xff80, v36.l, s7
	v_add_lshl_u32 v36, vcc_hi, v140, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s10
	buffer_load_u16 v36, v36, s[88:91], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v36.h, 0xff80, v45.l, s13
	v_add_lshl_u32 v45, vcc_hi, v220, 1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s12
	s_clause 0x7
	buffer_load_u16 v116, v45, s[88:91], 0 offen
	buffer_load_u16 v117, v46, s[88:91], 0 offen
	buffer_load_u16 v115, v47, s[88:91], 0 offen
	buffer_load_u16 v47, v48, s[88:91], 0 offen
	buffer_load_u16 v48, v82, s[88:91], 0 offen
	buffer_load_u16 v114, v83, s[88:91], 0 offen
	buffer_load_u16 v46, v84, s[88:91], 0 offen
	buffer_load_u16 v45, v85, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v82, s83, v144, 1
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v45.h, v34.l
	v_mov_b16_e32 v46.h, v35.l
	v_cndmask_b16 v115.h, 0xff80, v37.l, s23
	v_cndmask_b16 v116.h, 0xff80, v43.l, s25
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v83, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 2, v144
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v117.h, 0xff80, v41.l, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v84, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 4, v144
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v85, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 6, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v86, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 8, v144
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v87, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 10, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v88, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 12, v144
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v89, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 14, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v90, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 16, v144
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v91, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 18, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v92, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 20, v144
	v_add_lshl_u32 v82, v82, s83, 1
	buffer_load_u16 v93, v82, s[92:95], 0 offen
	v_or_b32_e32 v82, 22, v144
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v82, v82, s83, 1
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s83, s83, 64
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v82, v82, s[92:95], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v79, v245, v79
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v36.l, 0xff80, v36.l, s10
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v185, v[33:34], v[35:36] offset1:16
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v33.l, v248.l
	v_mov_b16_e64 v34.l, v248.l
	v_mov_b16_e64 v35.l, v248.l
	v_mov_b16_e32 v47.h, v36.l
	v_mov_b16_e64 v36.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v33
	v_cmp_neq_f32_e64 s15, 0xff800000, v34
	v_cmp_neq_f32_e64 s3, 0xff800000, v35
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v33.l, 0xff80, v116.l, s12
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v36
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v33.h, 0xff80, v117.l, s30
	v_cndmask_b16 v34.l, 0xff80, v115.l, s33
	v_cndmask_b16 v34.h, 0xff80, v47.l, s35
	v_cndmask_b16 v35.l, 0xff80, v48.l, s27
	v_cndmask_b16 v35.h, 0xff80, v114.l, s31
	v_cndmask_b16 v36.l, 0xff80, v46.l, s34
	v_cndmask_b16 v36.h, 0xff80, v45.l, s36
	v_mov_b16_e64 v45.l, v248.l
	v_mov_b16_e32 v48.h, v33.l
	v_mov_b16_e32 v114.h, v34.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s18, s5, s11
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v185, v[33:34], v[35:36] offset0:32 offset1:48
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v33.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v45
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v34.l, v248.l
	v_mov_b16_e64 v47.l, v248.l
	v_mov_b16_e64 v46.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v33
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e64 v35.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s17, s8, s16
	s_and_b32 s16, s9, s15
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v248
	v_cmp_neq_f32_e64 s45, 0xff800000, v34
	v_cmp_neq_f32_e64 s46, 0xff800000, v35
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v35, 0, 1, s16
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v46
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s19, s1, s8
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v47
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v114.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s17
	s_and_b32 s15, s6, s5
	s_and_b32 s11, s10, s1
	s_and_b32 s10, s13, s14
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s18
	s_and_b32 s14, s7, s3
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v114
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v48.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v154.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s19
	s_and_b32 s6, s35, s45
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s33, s1
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s10
	s_and_b32 s13, s12, s3
	s_and_b32 s12, s30, s44
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v34.h, v36.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v154.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s11
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v36.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s8, s31, s46
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v114.l, 0xff80, v40.l, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s14
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v36
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b16 v114.h, 0xff80, v39.l, s21
	v_cndmask_b16 v115.l, 0xff80, v38.l, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v155.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s15
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v116.l, 0xff80, v44.l, s24
	v_cndmask_b16 v117.l, 0xff80, v42.l, s26
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v81, v81, v83 :: v_dual_add_nc_u32 v118, 0, v176
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v185, v[114:115], v[116:117] offset0:64 offset1:80
	ds_store_2addr_b64 v185, v[152:153], v[119:120] offset0:96 offset1:112
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v155.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s7
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v83, 16, v84
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s12
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v80, v80, v83 :: v_dual_lshlrev_b32 v83, 16, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v156.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v156.l, v34.l, v33.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v34.l, v248.l
	v_mov_b16_e64 v33.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s5, s34, s1
	s_and_b32 s1, s36, s47
	v_cndmask_b32_e64 v34, 0, 1, s5
	v_cndmask_b32_e64 v33, 0, 1, s1
	s_and_b32 s9, s27, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v79, v79, v83 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v157.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s8
	v_cndmask_b32_e64 v34, 0, 1, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v78, v78, v83
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v157.l, v34.l, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v33, 0, v175
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[47:48], v33
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[33:34], v193
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[43:44], v194
	ds_load_b64 v[45:46], v192
	ds_load_b64 v[41:42], v195
	ds_load_b64 v[39:40], v196
	ds_load_b64 v[37:38], v197
	ds_load_b64 v[35:36], v198
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v118, v154, v155 offset1:32
	ds_store_2addr_b32 v118, v156, v157 offset0:64 offset1:96
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v154.h, v115.l
	v_mov_b16_e64 v115.l, v248.l
	v_mov_b16_e64 v154.l, v248.l
	v_mov_b16_e32 v118.h, v114.l
	v_mov_b16_e64 v114.l, v248.l
	v_mov_b16_e64 v118.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v115
	v_cmp_neq_f32_e64 s33, 0xff800000, v154
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v115.h, v117.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v114
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v114.h, v116.l
	v_mov_b16_e64 v116.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s34, s22, s33
	s_and_b32 s33, s23, s27
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v118
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v118, 0, 1, s33
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v116
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v116.h, v152.l
	v_mov_b16_e64 v152.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s36, s20, s35
	v_mov_b16_e32 v114.l, v118.l
	v_cndmask_b32_e64 v118, 0, 1, s34
	s_and_b32 s35, s21, s3
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v152
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v152.h, v119.l
	v_mov_b16_e64 v119.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v115.l, v118.l
	v_lshlrev_b16 v114.l, 8, v114.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v117.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s30, s25, s30
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v119
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v119, 0, 1, s35
	v_or_b16 v118.h, v115.l, v114.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v117
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v117.h, v153.l
	v_mov_b16_e64 v153.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v114.l, v119.l
	v_cndmask_b32_e64 v119, 0, 1, s36
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v50, v245, v50
	v_mul_f32_e32 v77, v77, v83
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v153
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_lshlrev_b16 v114.l, 8, v114.l
	v_mov_b16_e32 v115.l, v119.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v153.h, v120.l
	v_mov_b16_e64 v120.l, v248.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s22, s42, s45
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v88
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v118.l, v115.l, v114.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v115.l, v248.l
	v_mov_b16_e64 v114.l, v248.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v120
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v76, v76, v83 :: v_dual_lshlrev_b32 v83, 16, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v115
	v_cmp_neq_f32_e64 s20, 0xff800000, v114
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v50, v50, v82
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v82, 16, v47
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v74, v74, v83 :: v_dual_lshlrev_b32 v83, 16, v90
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s27, s26, s3
	s_and_b32 s26, s28, s31
	v_cndmask_b32_e64 v115, 0, 1, s27
	v_cndmask_b32_e64 v114, 0, 1, s26
	s_and_b32 s31, s24, s20
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v117
	v_cmp_neq_f32_e64 s20, 0xff800000, v116
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s28, s38, s44
	v_lshlrev_b16 v114.l, 8, v114.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v152
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s23, s40, s3
	s_and_b32 s29, s29, s20
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v153
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v119.h, v115.l, v114.l
	v_cndmask_b32_e64 v114, 0, 1, s30
	v_cndmask_b32_e64 v115, 0, 1, s31
	s_and_b32 s20, s43, s47
	s_and_b32 s21, s41, s3
	s_and_b32 s25, s37, s24
	v_lshlrev_b16 v114.l, 8, v114.l
	s_and_b32 s24, s39, s46
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v47, 0xffff0000, v47
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v72, v72, v83
	v_mul_f32_e32 v75, v245, v75
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v119.l, v115.l, v114.l
	v_cndmask_b32_e64 v114, 0, 1, s22
	v_cndmask_b32_e64 v115, 0, 1, s23
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v91
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v71, v245, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v114.l, 8, v114.l
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v85, 16, v46
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v75, v75, v83
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v47, s2, v80
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v82, 0x3fb8aa3b, v82 :: v_dual_lshlrev_b32 v83, 16, v92
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v116.h, v115.l, v114.l
	v_cndmask_b32_e64 v114, 0, 1, s28
	v_cndmask_b32_e64 v115, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v73, v73, v83 :: v_dual_lshlrev_b32 v84, 16, v45
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v93
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v114.l, 8, v114.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v46, 0xffff0000, v46
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v82, s2, v81 :: v_dual_mul_f32 v67, v245, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v71, v71, v83
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v116.l, v115.l, v114.l
	v_cndmask_b32_e64 v114, 0, 1, s20
	v_cndmask_b32_e64 v115, 0, 1, s21
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v94
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v94, 16, v35
	v_and_b32_e32 v35, 0xffff0000, v35
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v114.l, 8, v114.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v70, v70, v83 :: v_dual_lshlrev_b32 v93, 16, v38
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v95
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v89, 16, v42
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v114.h, v115.l, v114.l
	v_cndmask_b32_e64 v115, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v69, v69, v83 :: v_dual_and_b32 v42, 0xffff0000, v42
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v88, 16, v41
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v96
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v114.l, v115.l
	v_cndmask_b32_e64 v115, 0, 1, s25
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v63, v245, v63 :: v_dual_and_b32 v38, 0xffff0000, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v67, v67, v83
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v114.l, 8, v114.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v97
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v51, v245, v51 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v42
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v95, 16, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v114.l, v115.l, v114.l
	ds_store_2addr_b32 v199, v118, v119 offset1:32
	ds_store_2addr_b32 v199, v116, v114 offset0:64 offset1:96
	v_mad_u64_u32 v[114:115], null, s68, s70, v[135:136]
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v65, v65, v83 :: v_dual_lshlrev_b32 v92, 16, v37
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v98
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v59, v245, v59 :: v_dual_and_b32 v36, 0xffff0000, v36
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v96, 16, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v68, v68, v83 :: v_dual_lshlrev_b32 v249, 1, v114
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v99
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v97, 16, v34
	.loc	1 649 37                        ; attention.py:649:37
	v_and_b32_e32 v34, 0xffff0000, v34
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v66, v66, v83 :: v_dual_and_b32 v33, 0xffff0000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v34, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v83, 16, v100
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v46, s2, v72
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v96
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v91, 16, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v64, v64, v83 :: v_dual_lshlrev_b32 v83, 16, v101
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v72, s2, v75
	v_fmac_f32_e32 v34, s2, v50
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v40, 0xffff0000, v40
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v63, v63, v83
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v45, 0xffff0000, v45
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v102
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v250, v114, s101, 1
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v42, s2, v63
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v45, 0x3fb8aa3b, v45 :: v_dual_lshlrev_b32 v86, 16, v43
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v90, 16, v39
	.loc	1 694 30                        ; attention.py:694:30
	s_mul_i32 s3, s70, 48
	v_add_lshl_u32 v251, v114, s102, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v86 :: v_dual_fmac_f32 v45, s2, v76
	v_mul_f32_e32 v76, 0x3fb8aa3b, v85
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v62, v83
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v50, s2, v70 :: v_dual_lshlrev_b32 v83, 16, v103
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v76, s2, v74
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v74, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v61, v61, v83
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v104
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v55, v245, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v63, s2, v62 :: v_dual_fmac_f32 v74, s2, v73
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v97
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v59, v59, v83
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v105
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v33, 0, v177
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v252, v114, s3, 1
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v57, v57, v83
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v106
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v60, v60, v83 :: v_dual_lshlrev_b32 v83, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v83 :: v_dual_lshlrev_b32 v83, 16, v112
	v_mul_f32_e32 v56, v56, v83
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v55, v55, v83
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v83, 16, v110
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v38, s2, v55 :: v_dual_and_b32 v37, 0xffff0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v54, v54, v83 :: v_dual_lshlrev_b32 v83, 16, v109
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v94
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v55, s2, v54 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v35
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v39, 0xffff0000, v39
	v_lshlrev_b32_e32 v87, 16, v44
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v53, v53, v83 :: v_dual_and_b32 v44, 0xffff0000, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v73, s2, v71 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v44
	v_dual_fmac_f32 v54, s2, v53 :: v_dual_lshlrev_b32 v83, 16, v108
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, 0x3fb8aa3b, v95 :: v_dual_fmac_f32 v44, s2, v65
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v52, v52, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v62, s2, v61 :: v_dual_lshlrev_b32 v83, 16, v107
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v91
	v_mul_f32_e32 v65, 0x3fb8aa3b, v88
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v51, v51, v83
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v83, 16, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v61, s2, v59
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v40
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v53, s2, v52
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v36
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v65, s2, v68
	v_dual_fmac_f32 v59, s2, v57 :: v_dual_and_b32 v48, 0xffff0000, v48
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v57, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, 0x3fb8aa3b, v48
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v57, s2, v60 :: v_dual_mul_f32 v60, 0x3fb8aa3b, v37
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v52, s2, v51
	v_fmac_f32_e32 v80, s2, v79
	v_fmac_f32_e32 v48, s2, v78
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v84
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v60, s2, v58 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v43
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v93
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v41, 0xffff0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v78, s2, v77
	v_fmac_f32_e32 v43, s2, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v69, 0x3fb8aa3b, v87 :: v_dual_fmac_f32 v58, s2, v56
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v69, s2, v67
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v41
	v_mul_f32_e32 v41, 0x3fb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v67, s2, v66
	v_fmac_f32_e32 v41, s2, v64
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	ds_load_b32 v51, v33
	ds_load_b32 v56, v200
	ds_load_b32 v64, v201
	ds_load_b32 v66, v202
	ds_load_b32 v68, v203
	ds_load_b32 v70, v204
	ds_load_b32 v71, v205
	ds_load_b32 v75, v206
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v33, 0x10000, v51
	v_and_b32_e32 v36, 0x1000000, v51
	v_and_b32_e32 v40, 0x1000000, v56
	v_and_b32_e32 v37, 1, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s63, 0, v33
	v_and_b32_e32 v33, 0x10000, v56
	v_cmp_ne_u32_e64 s65, 0, v36
	v_cmp_ne_u32_e64 s62, 0, v40
	v_cmp_eq_u32_e64 s64, 1, v37
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v80, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s61, 0, v33
	v_and_b32_e32 v33, 0x10000, v64
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v48, s65
	v_cndmask_b32_e64 v40, 0xff800000, v46, s62
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v46, 1, v64
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v78, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s54, 0, v33
	v_and_b32_e32 v33, 0x10000, v66
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v76, s61
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s58, 1, v46
	v_and_b32_e32 v46, 0x1000000, v64
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v115, 0xff800000, v73, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s53, 0, v33
	v_and_b32_e32 v33, 0x10000, v68
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v113, 0xff800000, v72, s58
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s57, 0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v119, 0xff800000, v69, s53
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s46, 0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v116, 0xff800000, v34, s57
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v34, 1, v66
	v_cmp_eq_u32_e64 s56, 1, v34
	v_and_b32_e32 v34, 0x1000000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v117, 0xff800000, v50, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s55, 0, v34
	v_and_b32_e32 v34, 1, v68
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v50, 0x80000000, v251, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v120, 0xff800000, v44, s55
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s50, 1, v34
	v_and_b32_e32 v34, 0x1000000, v68
	v_and_b32_e32 v33, 0x10000, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v105, 0xff800000, v65, s50
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s49, 0, v34
	v_and_b32_e32 v34, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s45, 0, v33
	v_and_b32_e32 v33, 0x10000, v71
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v108, 0xff800000, v42, s49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s48, 1, v34
	v_and_b32_e32 v34, 0x1000000, v70
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v107, 0xff800000, v41, s46
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v41.l, 8, v64.l
	v_cmp_ne_u32_e64 s38, 0, v33
	v_and_b32_e32 v33, 0x10000, v75
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v111, 0xff800000, v61, s45
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s47, 0, v34
	v_and_b16 v41.l, 1, v41.l
	v_and_b32_e32 v34, 1, v71
	v_cmp_ne_u32_e64 s37, 0, v33
	v_and_b32_e32 v33, 1, v51
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v58, s38
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v58, 4, v0
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s60, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v66.l
	v_cmp_eq_u32_e64 s42, 1, v34
	v_and_b32_e32 v34, 0x1000000, v71
	v_cmp_eq_u32_e64 s66, 1, v33
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v109, 0xff800000, v63, s48
	v_cndmask_b32_e64 v87, 0xff800000, v53, s37
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v58, 0, v58
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_ne_u32_e64 s41, 0, v34
	v_and_b32_e32 v34, 1, v75
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v82, s66
	v_cndmask_b32_e64 v114, 0xff800000, v74, s60
	v_cndmask_b32_e64 v77, 0xff800000, v57, s42
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s59, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v68.l
	v_cmp_eq_u32_e64 s40, 1, v34
	v_and_b32_e32 v34, 0x1000000, v75
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v38, s41
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v38.l, 8, v56.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v112, 0xff800000, v59, s47
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_ne_u32_e64 s39, 0, v34
	v_lshrrev_b16 v34.l, 8, v51.l
	v_and_b16 v38.l, 1, v38.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v118, 0xff800000, v43, s59
	v_cndmask_b32_e64 v85, 0xff800000, v55, s40
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s52, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v70.l
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u16_e64 s67, 1, v38.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v52, s39
	v_cndmask_b32_e64 v106, 0xff800000, v67, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s68, 1, v34.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v45, s67
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v250, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s51, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v71.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v47, s68
	v_cndmask_b32_e64 v110, 0xff800000, v62, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s44, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v75.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v78, 0xff800000, v60, s44
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v41.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v41, 0, v178
	ds_store_b128 v41, v[33:36]
	ds_store_b128 v41, v[105:108] offset:2048
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v41, 0x80000000, v249, s0
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v86, 0xff800000, v54, s43
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v54, 0x80000000, v252, s0
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b128 v207, v[37:40]
	ds_store_b128 v207, v[109:112] offset:2048
	ds_store_b128 v208, v[113:116]
	ds_store_b128 v208, v[77:80] offset:2048
	ds_store_b128 v209, v[117:120]
	ds_store_b128 v209, v[85:88] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v210
	ds_load_b128 v[93:96], v210 offset:256
	ds_load_b128 v[97:100], v210 offset:1024
	ds_load_b128 v[89:92], v210 offset:1280
	ds_load_b128 v[81:84], v210 offset:512
	ds_load_b128 v[69:72], v210 offset:768
	ds_load_b128 v[73:76], v210 offset:1536
	ds_load_b128 v[65:68], v210 offset:1792
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v41, s[96:99], 0 offen
	buffer_load_b128 v[45:48], v45, s[96:99], 0 offen
	buffer_load_b128 v[50:53], v50, s[96:99], 0 offen
	buffer_load_b128 v[54:57], v54, s[96:99], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v58, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v58, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v58, v[50:53] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[54:57] offset:6144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v114, v115, v116
	v_max3_f32 v42, v117, v118, v119
	v_max3_f32 v43, v120, v105, v106
	v_max3_f32 v44, v77, v78, v79
.Ltmp2:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v41, v42, v43
	v_max3_f32 v42, v107, v108, v109
	v_max3_f32 v43, v110, v111, v112
	v_max3_f32 v42, v42, v43, v44
	v_max_f32_e32 v43, v33, v34
	v_max3_f32 v44, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v35, v44
	v_max3_f32 v44, v39, v40, v113
	v_max3_f32 v41, v43, v44, v41
	v_dual_max_f32 v43, v80, v85 :: v_dual_max_f32 v44, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v86, v44
	v_max3_f32 v41, v41, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v42, v41, s104, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v249, v49, v41, v42
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v41.h, v248.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v34, v249
	v_sub_f32_e32 v33, v33, v249
	v_sub_f32_e32 v36, v36, v249
	v_sub_f32_e32 v35, v35, v249
	v_sub_f32_e32 v38, v38, v249
	v_sub_f32_e32 v37, v37, v249
	v_sub_f32_e32 v40, v40, v249
	v_sub_f32_e32 v39, v39, v249
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s68
	v_cndmask_b32_e64 v33, 0, v33, s66
	v_cndmask_b32_e64 v36, 0, v36, s65
	v_cndmask_b32_e64 v35, 0, v35, s63
	v_cndmask_b32_e64 v38, 0, v38, s67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s64
	v_cndmask_b32_e64 v40, 0, v40, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s61
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s66, v33, v33
	v_cmp_o_f32_e64 s63, v35, v35
	v_cmp_o_f32_e64 s61, v39, v39
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s66
	v_permlanex16_b32 v41, v34, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v136
	v_perm_b32 v34, v41, v34, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v36.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s63
	v_cmp_o_f32_e64 s63, v37, v37
	v_permlanex16_b32 v41, v36, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v136
	v_perm_b32 v36, v41, v36, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s63
	v_permlanex16_b32 v41, v38, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v136
	v_perm_b32 v38, v41, v38, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s61
	v_permlanex16_b32 v41, v40, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v136
	v_perm_b32 v40, v41, v40, v139
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v41, v49, v249
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v43, v145 offset:608
	ds_load_u16_d16 v42, v145 offset:352
	ds_load_u16_d16 v60, v145 offset:768
	ds_load_u16_d16 v57, v145
	ds_load_u16_d16 v51, v145 offset:576
	ds_load_u16_d16 v52, v145 offset:832
	ds_load_u16_d16 v61, v145 offset:1024
	ds_load_u16_d16 v53, v145 offset:1088
	ds_load_u16_d16 v62, v145 offset:1280
	ds_load_u16_d16 v54, v145 offset:1344
	ds_load_u16_d16 v63, v145 offset:1536
	ds_load_u16_d16 v55, v145 offset:1600
	ds_load_u16_d16 v64, v145 offset:1792
	ds_load_u16_d16 v59, v145 offset:512
	ds_load_u16_d16 v58, v145 offset:256
	ds_load_u16_d16 v56, v145 offset:1856
	ds_load_u16_d16 v153, v145 offset:288
	ds_load_u16_d16 v152, v145 offset:32
	ds_load_u16_d16 v49, v145 offset:64
	ds_load_u16_d16 v50, v145 offset:320
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v250, 0, v41, s3
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v42, v145 offset:480
	ds_load_u16_d16 v41, v145 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v57, v145 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v51, v145 offset:704
	ds_load_u16_d16_hi v60, v145 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v52, v145 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v145 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v53, v145 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v62, v145 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v54, v145 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v145 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v55, v145 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v64, v145 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v59, v145 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v58, v145 offset:384
	ds_load_u16_d16 v154, v145 offset:544
	ds_load_u16_d16 v44, v145 offset:864
	ds_load_u16_d16 v45, v145 offset:1120
	ds_load_u16_d16 v46, v145 offset:1376
	ds_load_u16_d16 v47, v145 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v56, v145 offset:1984
	ds_load_u16_d16 v160, v145 offset:2048
	ds_load_u16_d16 v212, v145 offset:2112
	ds_load_u16_d16 v48, v145 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v152, v145 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v49, v145 offset:192
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v250
	v_mul_f32_e32 v18, v18, v250
	v_mul_f32_e32 v19, v19, v250
	v_mul_f32_e32 v20, v20, v250
	v_mul_f32_e32 v21, v21, v250
	v_mul_f32_e32 v22, v22, v250
	v_mul_f32_e32 v23, v23, v250
	v_mul_f32_e32 v24, v24, v250
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v41, v145 offset:224
	ds_load_u16_d16_hi v153, v145 offset:416
	ds_load_u16_d16_hi v50, v145 offset:448
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v250
	v_mul_f32_e32 v26, v26, v250
	v_mul_f32_e32 v27, v27, v250
	v_mul_f32_e32 v28, v28, v250
	v_mul_f32_e32 v29, v29, v250
	v_mul_f32_e32 v30, v30, v250
	v_mul_f32_e32 v31, v31, v250
	v_mul_f32_e32 v32, v32, v250
	v_mul_f32_e32 v9, v9, v250
	v_mul_f32_e32 v10, v10, v250
	v_mul_f32_e32 v11, v11, v250
	v_mul_f32_e32 v12, v12, v250
	v_mul_f32_e32 v13, v13, v250
	v_mul_f32_e32 v14, v14, v250
	v_mul_f32_e32 v15, v15, v250
	v_mul_f32_e32 v16, v16, v250
	v_mul_f32_e32 v1, v1, v250
	v_mul_f32_e32 v2, v2, v250
	v_mul_f32_e32 v3, v3, v250
	v_mul_f32_e32 v4, v4, v250
	v_mul_f32_e32 v5, v5, v250
	v_mul_f32_e32 v6, v6, v250
	v_mul_f32_e32 v7, v7, v250
	v_mul_f32_e32 v8, v8, v250
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v155, v145 offset:800
	ds_load_u16_d16 v156, v145 offset:1056
	ds_load_u16_d16 v157, v145 offset:1312
	ds_load_u16_d16 v158, v145 offset:1568
	ds_load_u16_d16 v159, v145 offset:1824
	ds_load_u16_d16 v213, v145 offset:2368
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v154, v145 offset:672
	ds_load_u16_d16_hi v43, v145 offset:736
	ds_load_u16_d16 v161, v145 offset:2304
	ds_load_u16_d16 v162, v145 offset:2560
	ds_load_u16_d16 v214, v145 offset:2624
	ds_load_u16_d16 v163, v145 offset:2816
	ds_load_u16_d16 v215, v145 offset:2880
	ds_load_u16_d16 v164, v145 offset:3072
	ds_load_u16_d16 v216, v145 offset:3136
	ds_load_u16_d16 v165, v145 offset:3328
	ds_load_u16_d16 v217, v145 offset:3392
	ds_load_u16_d16 v166, v145 offset:3584
	ds_load_u16_d16 v218, v145 offset:3648
	ds_load_u16_d16 v167, v145 offset:3840
	ds_load_u16_d16 v219, v145 offset:3904
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v160, v145 offset:2176
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(22)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v155, v145 offset:928
	ds_load_u16_d16_hi v44, v145 offset:992
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v156, v145 offset:1184
	ds_load_u16_d16_hi v45, v145 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v157, v145 offset:1440
	ds_load_u16_d16_hi v46, v145 offset:1504
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v158, v145 offset:1696
	ds_load_u16_d16_hi v47, v145 offset:1760
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v159, v145 offset:1952
	ds_load_u16_d16_hi v48, v145 offset:2016
	ds_load_u16_d16_hi v212, v145 offset:2240
	ds_load_u16_d16 v57, v145 offset:2080
	ds_load_u16_d16 v228, v145 offset:2144
	ds_load_u16_d16 v58, v145 offset:2336
	ds_load_u16_d16 v59, v145 offset:2592
	ds_load_u16_d16 v60, v145 offset:2848
	ds_load_u16_d16 v61, v145 offset:3104
	ds_load_u16_d16 v62, v145 offset:3360
	ds_load_u16_d16 v63, v145 offset:3616
	ds_load_u16_d16 v64, v145 offset:3872
	ds_load_u16_d16 v50, v145 offset:4416
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v57, v145 offset:2208
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v228, v145 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[152:159], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v114, v249
	v_sub_f32_e32 v33, v113, v249
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v41.h, v248.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v116, v249
	v_sub_f32_e32 v35, v115, v249
	v_sub_f32_e32 v38, v118, v249
	v_sub_f32_e32 v37, v117, v249
	v_sub_f32_e32 v40, v120, v249
	v_sub_f32_e32 v39, v119, v249
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v248.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s60
	v_cndmask_b32_e64 v33, 0, v33, s58
	v_cndmask_b32_e64 v36, 0, v36, s57
	v_cndmask_b32_e64 v35, 0, v35, s54
	v_cndmask_b32_e64 v38, 0, v38, s59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s56
	v_cndmask_b32_e64 v40, 0, v40, s55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s53
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s58, v33, v33
	v_cmp_o_f32_e64 s54, v35, v35
	v_cmp_o_f32_e64 s53, v39, v39
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s58
	v_permlanex16_b32 v41, v34, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v136
	v_perm_b32 v34, v41, v34, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v36.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s54
	v_cmp_o_f32_e64 s54, v37, v37
	v_permlanex16_b32 v41, v36, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v136
	v_perm_b32 v36, v41, v36, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s54
	v_permlanex16_b32 v41, v38, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v136
	v_perm_b32 v38, v41, v38, v139
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e32 v41.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s53
	v_permlanex16_b32 v41, v40, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v136
	v_perm_b32 v40, v41, v40, v139
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v161, v145 offset:2432
	ds_load_u16_d16_hi v213, v145 offset:2496
	ds_load_u16_d16_hi v162, v145 offset:2688
	ds_load_u16_d16_hi v214, v145 offset:2752
	ds_load_u16_d16_hi v163, v145 offset:2944
	ds_load_u16_d16_hi v215, v145 offset:3008
	ds_load_u16_d16_hi v164, v145 offset:3200
	ds_load_u16_d16_hi v216, v145 offset:3264
	ds_load_u16_d16_hi v165, v145 offset:3456
	ds_load_u16_d16_hi v217, v145 offset:3520
	ds_load_u16_d16_hi v166, v145 offset:3712
	ds_load_u16_d16_hi v218, v145 offset:3776
	ds_load_u16_d16_hi v167, v145 offset:3968
	ds_load_u16_d16_hi v219, v145 offset:4032
	ds_load_u16_d16 v229, v145 offset:2400
	ds_load_u16_d16 v230, v145 offset:2656
	ds_load_u16_d16 v231, v145 offset:2912
	ds_load_u16_d16 v232, v145 offset:3168
	ds_load_u16_d16 v233, v145 offset:3424
	ds_load_u16_d16 v234, v145 offset:3680
	ds_load_u16_d16 v41, v145 offset:4096
	ds_load_u16_d16 v49, v145 offset:4160
	ds_load_u16_d16 v235, v145 offset:3936
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v58, v145 offset:2464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v229, v145 offset:2528
	ds_load_u16_d16_hi v59, v145 offset:2720
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v230, v145 offset:2784
	ds_load_u16_d16_hi v60, v145 offset:2976
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v231, v145 offset:3040
	ds_load_u16_d16_hi v61, v145 offset:3232
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v232, v145 offset:3296
	ds_load_u16_d16_hi v62, v145 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v233, v145 offset:3552
	ds_load_u16_d16_hi v63, v145 offset:3744
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v234, v145 offset:3808
	ds_load_u16_d16_hi v64, v145 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v235, v145 offset:4064
	ds_load_u16_d16_hi v49, v145 offset:4288
	ds_load_u16_d16 v113, v145 offset:4128
	ds_load_u16_d16 v152, v145 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[160:167], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[212:219], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[228:235], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v106, v249
	v_sub_f32_e32 v33, v105, v249
	v_sub_f32_e32 v36, v108, v249
	v_sub_f32_e32 v35, v107, v249
	v_sub_f32_e32 v38, v110, v249
	v_sub_f32_e32 v37, v109, v249
	v_sub_f32_e32 v40, v112, v249
	v_sub_f32_e32 v39, v111, v249
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v114, v145 offset:4384
	ds_load_u16_d16 v115, v145 offset:4640
	ds_load_u16_d16 v116, v145 offset:4896
	ds_load_u16_d16 v117, v145 offset:5152
	ds_load_u16_d16 v118, v145 offset:5408
	ds_load_u16_d16 v119, v145 offset:5664
	ds_load_u16_d16 v120, v145 offset:5920
	ds_load_u16_d16 v106, v145 offset:6464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v113, v145 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v152, v145 offset:4320
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s52
	v_cndmask_b32_e64 v33, 0, v33, s50
	v_cndmask_b32_e64 v36, 0, v36, s49
	v_cndmask_b32_e64 v35, 0, v35, s46
	v_cndmask_b32_e64 v38, 0, v38, s51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s48
	v_cndmask_b32_e64 v40, 0, v40, s47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s50, v33, v33
	v_cmp_o_f32_e64 s46, v35, v35
	v_cmp_o_f32_e64 s45, v39, v39
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s50
	v_permlanex16_b32 v42, v34, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v136
	v_perm_b32 v34, v42, v34, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v36.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s46
	v_cmp_o_f32_e64 s46, v37, v37
	v_permlanex16_b32 v42, v36, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v136
	v_perm_b32 v36, v42, v36, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v38.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v37, v37, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s46
	v_permlanex16_b32 v42, v38, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v42, v38, v136
	v_perm_b32 v38, v42, v38, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v40.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v39, v39, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s45
	v_permlanex16_b32 v42, v40, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v42, v40, v136
	v_perm_b32 v40, v42, v40, v139
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v145 offset:4352
	ds_load_u16_d16 v43, v145 offset:4608
	ds_load_u16_d16 v51, v145 offset:4672
	ds_load_u16_d16 v44, v145 offset:4864
	ds_load_u16_d16 v52, v145 offset:4928
	ds_load_u16_d16 v45, v145 offset:5120
	ds_load_u16_d16 v53, v145 offset:5184
	ds_load_u16_d16 v46, v145 offset:5376
	ds_load_u16_d16 v54, v145 offset:5440
	ds_load_u16_d16 v47, v145 offset:5632
	ds_load_u16_d16 v55, v145 offset:5696
	ds_load_u16_d16 v48, v145 offset:5888
	ds_load_u16_d16 v56, v145 offset:5952
	ds_load_u16_d16_hi v41, v145 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v42, v145 offset:4480
	ds_load_u16_d16_hi v50, v145 offset:4544
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v43, v145 offset:4736
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v51, v145 offset:4800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v145 offset:4992
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v52, v145 offset:5056
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v145 offset:5248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v53, v145 offset:5312
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v145 offset:5504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v54, v145 offset:5568
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v145 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v55, v145 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v145 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v56, v145 offset:6080
	ds_load_u16_d16 v153, v145 offset:4448
	ds_load_u16_d16 v154, v145 offset:4704
	ds_load_u16_d16 v155, v145 offset:4960
	ds_load_u16_d16 v156, v145 offset:5216
	ds_load_u16_d16 v157, v145 offset:5472
	ds_load_u16_d16 v158, v145 offset:5728
	ds_load_u16_d16 v57, v145 offset:6144
	ds_load_u16_d16 v105, v145 offset:6208
	ds_load_u16_d16 v159, v145 offset:5984
	ds_load_u16_d16 v58, v145 offset:6400
	ds_load_u16_d16 v59, v145 offset:6656
	ds_load_u16_d16 v107, v145 offset:6720
	ds_load_u16_d16 v60, v145 offset:6912
	ds_load_u16_d16 v108, v145 offset:6976
	ds_load_u16_d16 v61, v145 offset:7168
	ds_load_u16_d16 v109, v145 offset:7232
	ds_load_u16_d16 v62, v145 offset:7424
	ds_load_u16_d16 v110, v145 offset:7488
	ds_load_u16_d16 v63, v145 offset:7680
	ds_load_u16_d16 v111, v145 offset:7744
	ds_load_u16_d16 v64, v145 offset:7936
	ds_load_u16_d16 v112, v145 offset:8000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v57, v145 offset:6272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v42.h, v248.l
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v114, v145 offset:4512
	ds_load_u16_d16_hi v153, v145 offset:4576
	ds_load_u16_d16_hi v115, v145 offset:4768
	ds_load_u16_d16_hi v154, v145 offset:4832
	ds_load_u16_d16_hi v116, v145 offset:5024
	ds_load_u16_d16_hi v155, v145 offset:5088
	ds_load_u16_d16_hi v117, v145 offset:5280
	ds_load_u16_d16_hi v156, v145 offset:5344
	ds_load_u16_d16_hi v118, v145 offset:5536
	ds_load_u16_d16_hi v157, v145 offset:5600
	ds_load_u16_d16_hi v119, v145 offset:5792
	ds_load_u16_d16_hi v158, v145 offset:5856
	ds_load_u16_d16_hi v120, v145 offset:6048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v159, v145 offset:6112
	ds_load_u16_d16_hi v105, v145 offset:6336
	ds_load_u16_d16 v41, v145 offset:6176
	ds_load_u16_d16 v49, v145 offset:6240
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v58, v145 offset:6528
	ds_load_u16_d16_hi v106, v145 offset:6592
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v59, v145 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v107, v145 offset:6848
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v60, v145 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v108, v145 offset:7104
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v61, v145 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v109, v145 offset:7360
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v62, v145 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v110, v145 offset:7616
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v63, v145 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v111, v145 offset:7872
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v64, v145 offset:8064
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v112, v145 offset:8128
	ds_load_u16_d16 v50, v145 offset:6496
	ds_load_u16_d16 v51, v145 offset:6752
	ds_load_u16_d16 v52, v145 offset:7008
	ds_load_u16_d16 v53, v145 offset:7264
	ds_load_u16_d16 v54, v145 offset:7520
	ds_load_u16_d16 v55, v145 offset:7776
	ds_load_u16_d16 v56, v145 offset:8032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[113:120], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v78, v249
	v_sub_f32_e32 v33, v77, v249
	v_sub_f32_e32 v36, v80, v249
	v_sub_f32_e32 v38, v86, v249
	v_sub_f32_e32 v40, v88, v249
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s44
	v_cndmask_b32_e64 v33, 0, v33, s42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v36, 0, v36, s41
	v_cndmask_b32_e64 v38, 0, v38, s43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v40, 0, v40, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v42.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s42, v33, v33
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s42
	v_permlanex16_b32 v42, v34, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v42, v34, v136
	v_perm_b32 v34, v42, v34, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v36.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v79, v249
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v42.l, v35.h
	v_cmp_o_f32_e64 s38, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s38
	v_permlanex16_b32 v42, v36, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v136
	v_perm_b32 v36, v42, v36, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v38.h
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v37, v85, v249 :: v_dual_and_b32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v38, v38, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v37.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v87, v249
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v42, 1, v42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v37, v37, v42, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v38, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v39, v39
	v_perm_b32 v37, v42, v38, v136
	v_perm_b32 v38, v42, v38, v139
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e64 v42.h, v248.l
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v40, s104, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v136
	v_perm_b32 v40, v42, v40, v139
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v145 offset:6432
	ds_load_u16_d16 v43, v145 offset:6688
	ds_load_u16_d16 v44, v145 offset:6944
	ds_load_u16_d16 v45, v145 offset:7200
	ds_load_u16_d16 v46, v145 offset:7456
	ds_load_u16_d16 v47, v145 offset:7712
	ds_load_u16_d16 v48, v145 offset:7968
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v41, v145 offset:6304
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v49, v145 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v42, v145 offset:6560
	ds_load_u16_d16_hi v50, v145 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v43, v145 offset:6816
	ds_load_u16_d16_hi v51, v145 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v44, v145 offset:7072
	ds_load_u16_d16_hi v52, v145 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v45, v145 offset:7328
	ds_load_u16_d16_hi v53, v145 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v46, v145 offset:7584
	ds_load_u16_d16_hi v54, v145 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v47, v145 offset:7840
	ds_load_u16_d16_hi v55, v145 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v145 offset:8096
	ds_load_u16_d16_hi v56, v145 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[33:40], v[1:8]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v100, v100
	v_max_f32_e32 v34, v104, v104
	v_max3_f32 v35, v98, v103, v99
	v_max3_f32 v36, v90, v95, v91
	v_max3_f32 v37, v74, v83, v75
	v_max3_f32 v38, v66, v71, v67
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v101, v97, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v34, v35, v33
	v_dual_max_f32 v35, v96, v96 :: v_dual_mov_b32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp13:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v146, v146
	v_max_f32_e32 v146, v34, v33
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v92, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v58, v102, v146
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v35, v34
	v_max3_f32 v35, v93, v89, v94
.Ltmp17:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v98, v146
	v_sub_f32_e32 v60, v104, v146
	v_sub_f32_e32 v64, v100, v146
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v58, v58
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v34, v35, v36, v34
	v_max_f32_e32 v36, v84, v84
.Ltmp19:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v35, v34
.Ltmp21:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v60, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp29:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v35, v147, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v147, v35, v34
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v76, v76
	v_max_f32_e32 v35, v36, v35
	v_max3_f32 v36, v81, v73, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v36, v37, v35
	v_dual_max_f32 v37, v72, v72 :: v_dual_mov_b32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp37:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v36, v148, v148 :: v_dual_sub_f32 v57, v101, v146
	v_dual_max_f32 v148, v36, v35 :: v_dual_sub_f32 v61, v97, v146
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v63, v99, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v57, v57
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v36, v68, v68 :: v_dual_sub_f32 v59, v103, v146
.Ltmp39:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v82, v148
	v_sub_f32_e32 v44, v83, v148
	v_sub_f32_e32 v40, v84, v148
	v_sub_f32_e32 v47, v75, v148
	v_sub_f32_e32 v42, v76, v148
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v42, v42
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s19
	v_cndmask_b32_e64 v61, 0, v61, s36
	v_cndmask_b32_e64 v59, 0, v59, s17
	v_cndmask_b32_e64 v44, 0, v44, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v47, 0, v47, s23
	v_cndmask_b32_e64 v40, 0, v40, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0, v42, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v81, v148
	v_dual_sub_f32 v73, v73, v148 :: v_dual_add_f32 v44, v44, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v40, v40, v42 :: v_dual_add_f32 v57, v57, v61
.Ltmp41:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v62
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v44, v40
	v_mov_b32_e32 v44, v131
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v37, v36
	v_max3_f32 v37, v69, v65, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s35
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v36, v37, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v58, v58, v61 :: v_dual_mov_b32 v37, v36
.Ltmp47:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v63
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s34
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v59, v59, v61
.Ltmp54:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v64
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v37
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v58, v59, v60 :: v_dual_mov_b32 v59, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v37, v36
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v37
.Ltmp68:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v149, v149
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v149, v37, v36
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp72:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v46, v66, v149 :: v_dual_sub_f32 v51, v95, v147
	v_sub_f32_e32 v79, v90, v147
	v_sub_f32_e32 v45, v96, v147
	v_sub_f32_e32 v49, v92, v147
	v_dual_sub_f32 v77, v93, v147 :: v_dual_sub_f32 v38, v68, v149
	v_sub_f32_e32 v78, v89, v147
	v_sub_f32_e32 v56, v94, v147
	v_sub_f32_e32 v54, v91, v147
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v54, v54
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v69, v149
	v_sub_f32_e32 v52, v65, v149
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
.Ltmp73:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v51, 0, v51, s11
	v_cndmask_b32_e64 v45, 0, v45, s10
	v_cndmask_b32_e64 v49, 0, v49, s26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v56, 0, v56, s14
	v_cndmask_b32_e64 v54, 0, v54, s27
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v45, v45, v49
.Ltmp76:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v51, v51, v54 :: v_dual_mov_b32 v58, v57
	v_add_f32_e32 v45, v51, v45
	v_mov_b32_e32 v51, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v130, v57, v58
.Ltmp80:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v57, v77
	v_exp_f32_e32 v58, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s15
	v_cndmask_b32_e64 v58, 0, v58, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v58
.Ltmp82:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v58, v79
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v56, v56, v58
	v_add_f32_e32 v49, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v45, v49, v45
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v49, v45
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v49
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v132, v45, v49
.Ltmp90:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v55
	v_exp_f32_e32 v49, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s13
	v_cndmask_b32_e64 v49, 0, v49, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v49
.Ltmp92:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v74, v148
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v49, v50
	v_exp_f32_e32 v50, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v49, s12
	v_cndmask_b32_e64 v50, 0, v50, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v50
	v_add_f32_e32 v42, v45, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v49, v249 :: v_dual_add_f32 v40, v42, v40
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v42, v40
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v40, v42
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v131, v40, v42
.Ltmp100:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v48
	v_exp_f32_e32 v42, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s9
	v_cndmask_b32_e64 v42, 0, v42, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v40, v40, v42 :: v_dual_sub_f32 v43, v70, v149
.Ltmp102:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v71, v149
	v_sub_f32_e32 v37, v72, v149
	v_sub_f32_e32 v41, v67, v149
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v42, v43
	v_exp_f32_e32 v43, v46
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v37, v37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s8
	v_cndmask_b32_e64 v43, 0, v43, s24
	v_cndmask_b32_e64 v39, 0, v39, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v41, 0, v41, s21
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_add_f32 v39, v39, v41
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v38, v40, v42 :: v_dual_add_f32 v37, v39, v37
	v_mov_b32_e32 v39, v133
	v_add_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v133, v37, v38
.Ltmp110:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v246, v246
	v_max_f32_e32 v33, v37, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v37, v246, v33 :: v_dual_mov_b32 v246, v33
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v239
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v130, v59, v37
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v37, v34
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v37, v239, v34
	v_mov_b32_e32 v239, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v37, v37
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v132, v51, v37
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v227, v227
	v_max_f32_e32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v37, v227, v35
	v_mov_b32_e32 v227, v35
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v247
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v131, v44, v37
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v247, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v37, v247, v36
	v_mov_b32_e32 v247, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v37, v37
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v133, v39, v37
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:4
	scratch_load_b32 v64, off, off
	v_lshlrev_b32_e32 v36, 2, v0
	v_readlane_b32 s16, v255, 0
	v_and_b32_e32 v63, 16, v0
	v_and_b32_e32 v48, 0x78, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v36
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, 0, v35
	v_add_nc_u32_e32 v35, 0, v48
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s2, 0x76543210
	ds_store_2addr_b64 v35, v[130:131], v[132:133] offset1:16
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
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_mul_f32_e32 v54, v34, v45
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_mul_f32 v55, v36, v46 :: v_dual_mul_f32 v56, v38, v47
	v_fmac_f32_e32 v49, v58, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v57, v40, v48 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v20, v33, v0, v20
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v19, v35, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v39, v0, v21
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v24, v34, v0, v24
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
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
	v_lshrrev_b32_e32 v32, 1, v63
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v19, s69
	v_cndmask_b32_e64 v6, v18, v17, s69
	v_cndmask_b32_e64 v7, v17, v18, s69
	v_cndmask_b32_e64 v13, v20, v22, s69
	v_cndmask_b32_e64 v16, v12, v9, s69
	v_cndmask_b32_e64 v9, v9, v12, s69
	v_cndmask_b32_e64 v12, v11, v10, s69
	v_cndmask_b32_e64 v10, v10, v11, s69
	v_cndmask_b32_e64 v17, v0, v1, s69
	v_cndmask_b32_e64 v0, v1, v0, s69
	.loc	1 843 24                        ; attention.py:843:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s70, v64
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v21, v23, s69
	v_cndmask_b32_e64 v1, v2, v3, s69
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v18, v3, v2, s69
	v_permlanex16_b32 v2, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s69
	v_cndmask_b32_e64 v8, v22, v20, s69
	v_permlanex16_b32 v9, v9, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v23, v21, s69
	v_permlanex16_b32 v3, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s70, v33
	v_cmp_gt_i32_e64 s3, s70, v32
	v_cmp_gt_i32_e64 s0, s70, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v136
	v_perm_b32 v11, v11, v12, v139
	v_perm_b32 v12, v13, v17, v136
	v_perm_b32 v13, v13, v17, v139
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v136
	v_perm_b32 v1, v2, v4, v139
	v_perm_b32 v4, v5, v8, v136
	v_perm_b32 v5, v5, v8, v139
	v_perm_b32 v8, v9, v16, v136
	v_perm_b32 v9, v9, v16, v139
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s70, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v136
	v_perm_b32 v3, v3, v6, v139
	v_perm_b32 v6, v7, v14, v136
	v_perm_b32 v7, v7, v14, v139
	v_perm_b32 v14, v15, v18, v136
	v_perm_b32 v15, v15, v18, v139
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
.Ltmp111:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 12
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21820
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 12
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 12
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
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
