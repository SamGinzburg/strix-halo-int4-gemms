	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x80
	s_load_b32 s90, s[0:1], 0x5c
	s_load_b64 s[4:5], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v68, 3, v0
	v_lshrrev_b32_e32 v67, 2, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s89, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s91, s3, 9
	s_mov_b32 s7, 0x31027000
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v151, 4, v68
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s67, s89, s91
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v33, s89, v67
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_and_b32_e32 v71, 15, v0
	v_or_b32_e32 v152, 8, v151
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_lshlrev_b32_e32 v70, 2, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v33
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v154, 5, v0
	v_lshlrev_b32_e32 v73, 3, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v17, 0x70, v70
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s90, v67
	s_mul_i32 s8, s90, s67
	s_lshl_b32 s92, s90, 5
	v_or_b32_e32 v2, s8, v151
	v_or_b32_e32 v4, s8, v152
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s90, v151
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	v_xor_b32_e32 v17, v154, v17
	.loc	1 598 26                        ; attention.py:598:26
	v_add_nc_u32_e32 v3, s92, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v5, v2, v1, 1
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v18, 0, v17
	v_add_lshl_u32 v2, v2, v3, 1
	v_add_lshl_u32 v3, v4, v3, 1
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v1, vcc_lo
	v_xad_u32 v17, v17, 16, 0
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v4, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	s_load_b64 s[6:7], s[0:1], 0x78
	s_mov_b32 s5, 0
	s_waitcnt vmcnt(3)
	ds_store_b128 v18, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v18, v[5:8] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v17, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[13:16] offset:4096
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s89, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s89, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, s12
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s4, s4, 0x200
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s93, s8, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s4, s4, 63
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s9, s4, 31
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s9, s9, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s94, s4, s9
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s94, s94, 63
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s93, s94
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v34, 3, v71
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr34
.LBB0_3:                                ; %Flow380
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s88, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 16, v0
	v_and_b32_e32 v72, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s4, 0, v69
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
	v_mov_b32_e32 v66, v8
	v_mov_b32_e32 v65, v8
	s_cbranch_vccnz .LBB0_71
; %bb.4:                                ; %.lr.ph
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_and_b32_e32 v2, 7, v0
	.loc	1 570 21                        ; attention.py:570:21
	v_or3_b32 v3, v67, s89, 32
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s12, v33
	s_clause 0x2
	s_load_b128 s[80:83], s[0:1], 0x8
	s_load_b64 s[78:79], s[0:1], 0x30
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 657 49                        ; attention.py:657:49
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v3, s12, v3
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v169, s6, v4
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v171, s7, v4
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v4, 7, v71
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v5, 6, v72
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v2, 4, v2
	v_mov_b32_e32 v26, v25
	v_subrev_nc_u32_e32 v170, s6, v3
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v172, s7, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v3, v4, v5, v2
	v_mov_b32_e32 v32, v25
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v10, 1, v151
	v_or_b32_e32 v11, 2, v151
	v_or_b32_e32 v12, 3, v151
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v5, 0x70, v3, 0
	v_xad_u32 v6, 0x60, v3, 0
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v6
	v_xad_u32 v5, 0x50, v3, 0
	v_xad_u32 v6, v3, 64, 0
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 32, 0
	v_xad_u32 v9, v3, 16, 0
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[61:64], v9
	ds_load_b128 v[57:60], v3
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v8, s11, v67
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v5, 3, v0
	v_mov_b32_e32 v19, v25
	v_or_b32_e32 v13, 4, v151
	v_mov_b32_e32 v21, v25
	v_or_b32_e32 v14, 5, v151
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[145:146], null, s90, v5, v[1:2]
	v_or_b32_e32 v146, v2, v4
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v4, v8, v10
	v_lshl_add_u32 v2, s11, 5, v8
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v3, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off
	scratch_store_b32 off, v73, off offset:36
	v_add_nc_u32_e32 v4, v8, v11
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v6, 4, v0
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v7, 0x70, v3
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v8, v12
	v_lshlrev_b32_e32 v5, 2, v72
	.loc	1 660 31                        ; attention.py:660:31
	v_cmp_gt_i32_e32 vcc_lo, s90, v1
	v_mov_b32_e32 v15, v25
	v_xor_b32_e32 v1, v6, v7
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v8, v13
	v_add_nc_u32_e32 v182, v2, v13
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v9, 0x260, v154
	v_and_b32_e32 v13, 48, v0
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v8, v14
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v254, 6, v151
	v_or_b32_e32 v255, 7, v151
	v_or_b32_e32 v153, 9, v151
	v_or_b32_e32 v163, 10, v151
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v4, v2, v151
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v164, 11, v151
	v_or_b32_e32 v165, 12, v151
	v_or_b32_e32 v166, 13, v151
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v2, v10
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v167, 14, v151
	v_or_b32_e32 v168, 15, v151
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v183, v2, v14
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v2, v11
	v_dual_mov_b32 v233, v25 :: v_dual_and_b32 v6, 0x80, v6
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v11, 11, v68
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v2, v12
	v_dual_mov_b32 v231, v25 :: v_dual_lshlrev_b32 v12, 6, v69
	v_and_or_b32 v6, v70, 16, v6
	v_and_b32_e32 v3, 0x80, v3
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_and_b32_e32 v4, 12, v0
	v_add_nc_u32_e32 v251, v8, v254
	v_add_nc_u32_e32 v148, v8, v255
	v_add_nc_u32_e32 v252, v8, v152
	v_add_nc_u32_e32 v150, v8, v153
	v_lshlrev_b32_e32 v7, 8, v4
	v_lshl_or_b32 v10, v4, 1, v5
	v_add_nc_u32_e32 v253, v8, v163
	v_add_nc_u32_e32 v181, v8, v164
	v_add_nc_u32_e32 v204, v8, v165
	v_add_nc_u32_e32 v205, v8, v166
	v_or3_b32 v188, v7, v9, v10
	v_lshrrev_b32_e32 v7, 1, v13
	v_lshlrev_b32_e32 v9, 5, v68
	v_lshl_or_b32 v10, v13, 6, v73
	v_add_nc_u32_e32 v206, v8, v167
	v_add_nc_u32_e32 v207, v8, v168
	v_add_nc_u32_e32 v208, v8, v151
	v_mov_b32_e32 v8, v25
	v_xor_b32_e32 v7, v10, v7
	v_mov_b32_e32 v10, v25
	v_lshl_or_b32 v5, v4, 3, v5
	v_lshl_or_b32 v4, v4, 9, v9
	v_or3_b32 v6, v6, v11, v12
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_lshlrev_b32 v11, 3, v72
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v4, v5
	v_mov_b32_e32 v5, 0x5410
	v_or3_b32 v192, v6, v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_add_nc_u32 v193, v3, v7
	v_add_nc_u32_e32 v9, 0, v69
	v_cndmask_b32_e64 v3, 0x1054, v5, s4
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v184, v2, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x3276, v6, s4
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v185, v2, v255
	v_lshl_or_b32 v3, v3, 8, v3
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v186, v2, v152
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v187, v2, v153
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v189, v2, v163
	v_add_nc_u32_e32 v190, v2, v164
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v191, v2, v165
	v_add_nc_u32_e32 v194, v2, v166
	v_add_nc_u32_e32 v147, v2, v167
	v_add_nc_u32_e32 v149, v2, v168
	v_mul_lo_u32 v2, s88, v67
	v_add_nc_u32_e32 v195, v9, v4
	v_lshl_or_b32 v4, v5, 8, v5
	v_and_b32_e32 v3, 0x540054, v3
	v_add_nc_u32_e32 v214, 0, v1
	v_xor_b32_e32 v1, 48, v146
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_and_b32_e32 v4, 0x760076, v4
	v_lshl_add_u32 v5, s88, 5, v2
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v209, v151, v2
	v_lshl_or_b32 v2, v3, 4, v3
	v_add_nc_u32_e32 v217, 0, v1
	v_lshl_or_b32 v3, v4, 4, v4
	v_xor_b32_e32 v4, 0x60, v146
	v_xor_b32_e32 v1, 8, v188
	v_and_b32_e32 v212, 0x5040504, v2
	v_xor_b32_e32 v2, 16, v146
	v_and_b32_e32 v213, 0x7060706, v3
	v_xor_b32_e32 v3, 32, v146
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v210, v151, v5
	v_add_nc_u32_e32 v215, 0, v2
	v_xor_b32_e32 v2, 64, v146
	v_add_nc_u32_e32 v216, 0, v3
	v_xor_b32_e32 v3, 0x50, v146
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v211, v152, v5
	v_add_nc_u32_e32 v218, 0, v2
	v_xor_b32_e32 v2, 16, v188
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s5, s1, -8
	v_xor_b32_e32 v5, 0x70, v146
	v_add_nc_u32_e32 v219, 0, v3
	v_add_nc_u32_e32 v220, 0, v4
	v_add_nc_u32_e32 v222, 0, v1
	v_add_nc_u32_e32 v223, 0, v2
	v_xor_b32_e32 v1, 24, v188
	v_xor_b32_e32 v2, 32, v192
	v_xor_b32_e32 v3, 64, v192
	v_xor_b32_e32 v4, 0x60, v192
	s_sub_i32 s3, s3, s5
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s10, s3
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s88, v151
	v_add_nc_u32_e32 v221, 0, v5
	v_add_nc_u32_e32 v224, 0, v1
	v_add_nc_u32_e32 v225, 0, v2
	v_add_nc_u32_e32 v226, 0, v3
	v_add_nc_u32_e32 v227, 0, v4
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_lshl_add_u32 v228, v71, 1, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s95, s8, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s5, s11, s89
	s_add_i32 s98, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s68, 0
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	s_lshl_b32 s96, s90, 4
	s_mul_i32 s97, s90, 48
	s_and_b32 s81, s81, 0xffff
	s_add_i32 s98, s98, s5
	s_and_b32 s85, s83, 0xffff
	s_mov_b32 s84, s82
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s99, 0x76543210
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v114, s95, v93 :: v_dual_mul_f32 v115, s95, v94
	v_mul_f32_e32 v94, s95, v65
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v103.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v93, s95, v67 :: v_dual_mul_f32 v118, s95, v89
	v_dual_mul_f32 v119, s95, v90 :: v_dual_mul_f32 v90, s95, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_and_b16 v65.l, 0xff, v104.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v113, s95, v95 :: v_dual_mul_f32 v96, s95, v96
	v_mul_f32_e32 v95, s95, v66
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s8, s8, s3
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s4, 0, v65.l
	v_and_b16 v65.l, 0xff, v106.h
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v117, s95, v91 :: v_dual_mul_f32 v116, s95, v92
	v_mul_f32_e32 v92, s95, v68
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s5, s5, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s1, 0, v65.l
	v_and_b16 v65.l, 0xff, v105.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s5
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v91, s95, v70
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s13, s1
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s1
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s8
	s_barrier
	s_and_b32 s4, s12, s6
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s4
	v_or_b16 v69.l, v66.l, v65.h
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v131, s95, v75 :: v_dual_mul_f32 v132, s95, v76
	v_dual_mul_f32 v133, s95, v77 :: v_dual_mul_f32 v134, s95, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v69.h, v67.l, v65.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v101.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v89, s95, v71 :: v_dual_mul_f32 v120, s95, v72
	v_dual_mul_f32 v79, s95, v79 :: v_dual_mul_f32 v80, s95, v80
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_and_b16 v65.l, 0xff, v100.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v129, s95, v73 :: v_dual_mul_f32 v130, s95, v74
	v_dual_mul_f32 v81, s95, v81 :: v_dual_mul_f32 v82, s95, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v65.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s10, s10, s3
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v83, s95, v83 :: v_dual_mul_f32 v84, s95, v84
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s10
	s_and_b32 s12, s11, s6
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v85, s95, v85 :: v_dual_mul_f32 v86, s95, v86
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v87, s95, v87 :: v_dual_mul_f32 v88, s95, v88
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s100, s100, s88
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v155, 0, v154
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v68.h, v66.l, v65.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v99.l
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_add_i32 s93, s93, 64
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_and_b16 v65.l, 0xff, v98.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s14, s9, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s14
	s_and_b32 s16, s7, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s16
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v110.h
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s9, 0, v65.l
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, 0xff, v111.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s9, s20, s9
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v65.l
	v_and_b16 v65.l, 0xff, v112.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s7, s22, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_and_b16 v65.l, 0xff, v112.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s7
	s_and_b32 s3, s33, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s11, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s9
	s_and_b32 s6, s30, s11
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v67.h, v67.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v109.l
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v67.l, v66.l, v65.h
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s11, 0, v65.l
	v_and_b16 v65.l, 0xff, v108.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s11, s17, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s13, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s11
	s_and_b32 s13, s15, s13
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.h, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v107.h
	v_cmp_ne_u16_e64 s15, 0, v65.l
	v_and_b16 v65.l, 0xff, v106.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s15, s19, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s17, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s15
	s_and_b32 s17, s18, s17
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v70, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v66.l, v70.l
	v_or_b16 v66.l, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v100.h
	.loc	1 681 25                        ; attention.py:681:25
	ds_store_2addr_b64 v193, v[68:69], v[66:67] offset1:32
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v101.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s24, s24, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s20, 0, v65.l
	v_and_b16 v65.l, 0xff, v103.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s21, s21, s20
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s18, 0, v65.l
	v_and_b16 v65.l, 0xff, v102.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s21
	s_and_b32 s18, s29, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s22, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s18
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s24
	s_and_b32 s20, s28, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s20
	v_or_b16 v69.l, v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v69.h, v67.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v99.h
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v98.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s26, s26, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s22, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s26
	s_and_b32 s28, s27, s22
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v68.h, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v97.h
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v97.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s30, s25, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s22, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s30
	s_and_b32 s33, s23, s22
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v108.h
	v_cmp_ne_u16_e64 s25, 0, v65.l
	v_and_b16 v65.l, 0xff, v109.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s25, s37, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s22, 0, v65.l
	v_and_b16 v65.l, 0xff, v111.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s23, s38, s22
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v110.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s23
	s_and_b32 s19, s40, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s27, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s19
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s25
	s_and_b32 s22, s39, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s22
	v_or_b16 v67.h, v67.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v107.l
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v67.l, v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s27, 0, v65.l
	v_and_b16 v65.l, 0xff, v105.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s27, s34, s27
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s29, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s27
	s_and_b32 s29, s31, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s29
	v_or_b16 v66.h, v66.l, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v65.l, 0xff, v104.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s31, 0, v65.l
	v_and_b16 v65.l, 0xff, v102.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s31, s36, s31
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s34, 0, v65.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s31
	s_and_b32 s34, s35, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v70, 0, 1, s34
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s93, s94
	.loc	1 681 25                        ; attention.py:681:25
	v_mov_b16_e32 v66.l, v70.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v66.l, v66.l, v65.l
	v_add_nc_u32_e32 v65, 0, v188
	ds_store_2addr_b64 v193, v[68:69], v[66:67] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[66:67], v65
	ds_load_b64 v[68:69], v222
	ds_load_b64 v[75:76], v223
	ds_load_b64 v[77:78], v224
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v72, 0x1000000, v67
	v_lshrrev_b16 v71.l, 8, v68.l
	v_lshrrev_b16 v73.l, 8, v69.l
	v_and_b32_e32 v110, 0x1000000, v78
	v_and_b32_e32 v111, 0x10000, v78
	v_cmp_ne_u32_e64 s62, 0, v72
	v_and_b16 v71.l, 1, v71.l
	v_and_b32_e32 v98, 0x1000000, v66
	v_cmp_ne_u32_e64 s36, 0, v110
	v_cmp_ne_u32_e64 s35, 0, v111
	v_and_b32_e32 v102, 0x1000000, v68
	v_cmp_eq_u16_e64 s57, 1, v71.l
	v_and_b32_e32 v103, 0x10000, v68
	v_lshrrev_b16 v74.h, 8, v78.l
	v_and_b32_e32 v78, 1, v78
	v_and_b32_e32 v112, 0x1000000, v77
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v96, s62
	v_cndmask_b32_e64 v122, 0xff800000, v95, s57
	v_cndmask_b32_e64 v95, 0xff800000, v79, s35
	v_cndmask_b32_e64 v96, 0xff800000, v80, s36
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v97, 0x10000, v67
	v_lshrrev_b16 v74.l, 8, v75.l
	v_and_b16 v73.l, 1, v73.l
	v_cmp_ne_u32_e64 s64, 0, v98
	v_cmp_ne_u32_e64 s55, 0, v103
	v_cmp_ne_u32_e64 s59, 0, v97
	v_cmp_ne_u32_e64 s56, 0, v102
	v_cmp_ne_u32_e64 s40, 0, v112
	v_cmp_eq_u32_e64 s38, 1, v78
	v_lshrrev_b16 v73.h, 8, v76.l
	v_cmp_eq_u16_e64 s53, 1, v73.l
	v_and_b16 v73.l, 1, v74.l
	v_lshrrev_b16 v65.l, 8, v67.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v113, s59
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v104, 1, v68
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v116, s64
	v_cndmask_b32_e64 v123, 0xff800000, v93, s55
	v_cndmask_b32_e64 v124, 0xff800000, v92, s56
	v_cndmask_b32_e64 v92, 0xff800000, v132, s40
	v_cndmask_b32_e64 v93, 0xff800000, v133, s38
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v70, 1, v67
	v_and_b32_e32 v67, 0x10000, v66
	v_and_b32_e32 v107, 0x1000000, v75
	v_and_b32_e32 v108, 0x10000, v75
	v_and_b32_e32 v109, 1, v75
	v_lshrrev_b16 v75.l, 8, v77.l
	v_cmp_eq_u16_e64 s49, 1, v73.l
	v_and_b16 v73.l, 1, v73.h
	v_lshrrev_b16 v65.h, 8, v66.l
	v_cmp_ne_u32_e64 s63, 0, v67
	v_cmp_eq_u32_e64 s58, 1, v104
	v_and_b16 v65.l, 1, v65.l
	v_cmp_eq_u16_e64 s44, 1, v73.l
	v_and_b16 v73.l, 1, v75.l
	v_and_b16 v65.h, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v117, s63
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v99, 0x1000000, v69
	v_and_b32_e32 v100, 0x10000, v69
	v_and_b32_e32 v101, 1, v69
	v_and_b32_e32 v105, 0x1000000, v76
	v_and_b32_e32 v106, 0x10000, v76
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v121, 0xff800000, v94, s58
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v76, 1, v76
	v_and_b32_e32 v135, 0x10000, v77
	v_and_b32_e32 v77, 1, v77
	v_cmp_eq_u16_e64 s41, 1, v73.l
	v_and_b16 v73.l, 1, v74.h
	v_cmp_eq_u16_e64 s65, 1, v65.h
	v_cmp_eq_u16_e64 s60, 1, v65.l
	v_cmp_eq_u32_e64 s66, 1, v66
	v_cmp_eq_u32_e64 s61, 1, v70
	v_cmp_eq_u32_e64 s54, 1, v101
	v_cmp_ne_u32_e64 s51, 0, v100
	v_cmp_ne_u32_e64 s52, 0, v99
	v_cmp_eq_u32_e64 s50, 1, v109
	v_cmp_ne_u32_e64 s47, 0, v108
	v_cmp_ne_u32_e64 s48, 0, v107
	v_cmp_eq_u32_e64 s45, 1, v76
	v_cmp_ne_u32_e64 s43, 0, v106
	v_cmp_ne_u32_e64 s46, 0, v105
	v_cmp_eq_u32_e64 s42, 1, v77
	v_cmp_ne_u32_e64 s39, 0, v135
	v_cmp_eq_u16_e64 s37, 1, v73.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v118, s66
	v_cndmask_b32_e64 v66, 0xff800000, v119, s65
	v_cndmask_b32_e64 v69, 0xff800000, v114, s61
	v_cndmask_b32_e64 v70, 0xff800000, v115, s60
	v_add_nc_u32_e32 v97, 0, v192
	v_cndmask_b32_e64 v125, 0xff800000, v90, s54
	v_cndmask_b32_e64 v126, 0xff800000, v91, s53
	v_cndmask_b32_e64 v127, 0xff800000, v89, s51
	v_cndmask_b32_e64 v128, 0xff800000, v120, s52
	v_cndmask_b32_e64 v113, 0xff800000, v81, s50
	v_cndmask_b32_e64 v114, 0xff800000, v82, s49
	v_cndmask_b32_e64 v115, 0xff800000, v83, s47
	v_cndmask_b32_e64 v116, 0xff800000, v84, s48
	v_cndmask_b32_e64 v117, 0xff800000, v85, s45
	v_cndmask_b32_e64 v118, 0xff800000, v86, s44
	v_cndmask_b32_e64 v119, 0xff800000, v87, s43
	v_cndmask_b32_e64 v120, 0xff800000, v88, s46
	v_cndmask_b32_e64 v89, 0xff800000, v129, s42
	v_cndmask_b32_e64 v90, 0xff800000, v130, s41
	v_cndmask_b32_e64 v91, 0xff800000, v131, s39
	v_cndmask_b32_e64 v94, 0xff800000, v134, s37
	ds_store_b128 v97, v[65:68]
	ds_store_b128 v225, v[121:124]
	ds_store_b128 v226, v[113:116]
	ds_store_b128 v227, v[89:92]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v195
	ds_load_b128 v[77:80], v195 offset:512
	ds_load_b128 v[81:84], v195 offset:1024
	ds_load_b128 v[73:76], v195 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v97, v[69:72]
	ds_store_b128 v225, v[125:128]
	ds_store_b128 v226, v[117:120]
	ds_store_b128 v227, v[93:96]
	v_add_lshl_u32 v97, s100, v209, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v99, s100, v210, 1
	v_add_lshl_u32 v100, s100, v211, 1
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v98, 16, v97
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	s_clause 0x3
	buffer_load_b128 v[129:132], v97, s[84:87], 0 offen
	buffer_load_b128 v[133:136], v98, s[84:87], 0 offen
	buffer_load_b128 v[137:140], v99, s[84:87], 0 offen
	buffer_load_b128 v[141:144], v100, s[84:87], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[109:112], v195
	ds_load_b128 v[101:104], v195 offset:512
	ds_load_b128 v[105:108], v195 offset:1024
	ds_load_b128 v[97:100], v195 offset:1536
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v155, v[129:132]
	s_waitcnt vmcnt(2)
	ds_store_b128 v155, v[133:136] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v155, v[137:140] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v155, v[141:144] offset:4112
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v129, v122, v123, v124
	v_max3_f32 v130, v125, v126, v127
	v_max3_f32 v131, v128, v113, v114
	v_max3_f32 v132, v89, v90, v91
.Ltmp2:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v129, v129, v130, v131
	v_max3_f32 v130, v115, v116, v117
	v_max3_f32 v131, v118, v119, v120
	v_max3_f32 v130, v130, v131, v132
	v_max_f32_e32 v131, v65, v66
	v_max3_f32 v132, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v131, v131, v67, v132
	v_max3_f32 v132, v71, v72, v121
	v_max3_f32 v129, v131, v132, v129
	v_dual_max_f32 v131, v92, v93 :: v_dual_max_f32 v132, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v131, v131, v94, v132
	v_max3_f32 v129, v129, v130, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v130, v129, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v129, v235, v129, v130
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v130.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v66, v129
	v_sub_f32_e32 v65, v65, v129
	v_sub_f32_e32 v68, v68, v129
	v_sub_f32_e32 v67, v67, v129
	v_sub_f32_e32 v70, v70, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v129
	v_sub_f32_e32 v72, v72, v129
	v_sub_f32_e32 v71, v71, v129
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s65
	v_cndmask_b32_e64 v65, 0, v65, s66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s64
	v_cndmask_b32_e64 v67, 0, v67, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s60
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v130.l, v66.h
	v_cmp_o_f32_e64 s65, v66, v66
	v_cmp_o_f32_e64 s66, v65, v65
	v_cmp_o_f32_e64 s64, v68, v68
	v_cmp_o_f32_e64 s63, v67, v67
	v_and_b32_e32 v131, 1, v130
	v_mov_b16_e64 v130.l, v68.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s60, v70, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v131, v66, v131, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v130.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s61
	v_cndmask_b32_e64 v72, 0, v72, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s61, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v131.l, 0x7fff, v66.h, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s59, v71, v71
	v_permlanex16_b32 v66, v131, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v65, v66, v131, v212
	v_perm_b32 v66, v66, v131, v213
	v_and_b32_e32 v131, 1, v130
	v_mov_b16_e64 v130.l, v70.h
	v_add3_u32 v131, v68, v131, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v130.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s64
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v68.h, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v131, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v131, v212
	v_perm_b32 v68, v68, v131, v213
	v_and_b32_e32 v131, 1, v130
	v_mov_b16_e64 v130.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v131, v70, v131, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v130.h
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s60
	v_cmp_o_f32_e64 s60, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v69, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v131.l, 0x7fff, v70.h, s61
	v_permlanex16_b32 v70, v131, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v70, v131, v212
	v_perm_b32 v70, v70, v131, v213
	v_and_b32_e32 v131, 1, v130
	v_add3_u32 v131, v72, v131, 0x7fff
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e64 v72.h, v130.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s60
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v71, v72, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v72.h, s59
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s59, 0xff800000, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v131, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v131, v212
	v_perm_b32 v72, v72, v131, v213
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v131, v235, v129
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v134, v228 offset:608
	ds_load_u16_d16 v133, v228 offset:352
	ds_load_u16_d16 v235, v228
	ds_load_u16_d16 v237, v228 offset:512
	ds_load_u16_d16 v236, v228 offset:256
	ds_load_u16_d16 v238, v228 offset:768
	ds_load_u16_d16 v245, v228 offset:576
	ds_load_u16_d16 v246, v228 offset:832
	ds_load_u16_d16 v239, v228 offset:1024
	ds_load_u16_d16 v247, v228 offset:1088
	ds_load_u16_d16 v240, v228 offset:1280
	ds_load_u16_d16 v248, v228 offset:1344
	ds_load_u16_d16 v241, v228 offset:1536
	ds_load_u16_d16 v242, v228 offset:1792
	ds_load_u16_d16 v249, v228 offset:1600
	ds_load_u16_d16 v243, v228 offset:64
	ds_load_u16_d16 v244, v228 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v133, v228 offset:480
	ds_load_u16_d16 v132, v228 offset:96
	ds_load_u16_d16 v173, v228 offset:32
	ds_load_u16_d16 v174, v228 offset:288
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v228 offset:128
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v236, v228 offset:384
	ds_load_u16_d16_hi v237, v228 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v245, v228 offset:704
	ds_load_u16_d16_hi v238, v228 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v246, v228 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v239, v228 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v247, v228 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v240, v228 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v248, v228 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v241, v228 offset:1664
	ds_load_u16_d16 v250, v228 offset:1856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v249, v228 offset:1728
	ds_load_u16_d16_hi v242, v228 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v131, v131
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v140, 0, v131, s59
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v173, v228 offset:160
	ds_load_u16_d16_hi v243, v228 offset:192
	ds_load_u16_d16_hi v132, v228 offset:224
	ds_load_u16_d16 v175, v228 offset:544
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v174, v228 offset:416
	ds_load_u16_d16_hi v244, v228 offset:448
	ds_load_u16_d16 v135, v228 offset:864
	ds_load_u16_d16 v136, v228 offset:1120
	ds_load_u16_d16 v137, v228 offset:1376
	ds_load_u16_d16 v138, v228 offset:1632
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v250, v228 offset:1984
	ds_load_u16_d16 v131, v228 offset:2048
	ds_load_u16_d16 v155, v228 offset:2112
	ds_load_u16_d16 v139, v228 offset:1888
	ds_load_u16_d16 v176, v228 offset:800
	ds_load_u16_d16 v177, v228 offset:1056
	ds_load_u16_d16 v178, v228 offset:1312
	ds_load_u16_d16 v179, v228 offset:1568
	ds_load_u16_d16 v180, v228 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v175, v228 offset:672
	ds_load_u16_d16_hi v134, v228 offset:736
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v140
	v_mul_f32_e32 v26, v26, v140
	v_mul_f32_e32 v27, v27, v140
	v_mul_f32_e32 v28, v28, v140
	v_mul_f32_e32 v29, v29, v140
	v_mul_f32_e32 v30, v30, v140
	v_mul_f32_e32 v31, v31, v140
	v_mul_f32_e32 v32, v32, v140
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v176, v228 offset:928
	ds_load_u16_d16_hi v135, v228 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v177, v228 offset:1184
	ds_load_u16_d16_hi v136, v228 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v178, v228 offset:1440
	ds_load_u16_d16_hi v137, v228 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v179, v228 offset:1696
	ds_load_u16_d16_hi v138, v228 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v180, v228 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[235:242], v[65:72], v[25:32]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v140
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v139, v228 offset:2016
	ds_load_u16_d16 v156, v228 offset:2368
	ds_load_u16_d16_hi v155, v228 offset:2240
	ds_load_u16_d16 v235, v228 offset:2080
	ds_load_u16_d16 v196, v228 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v140
	v_mul_f32_e32 v18, v18, v140
	v_mul_f32_e32 v19, v19, v140
	v_mul_f32_e32 v20, v20, v140
	v_mul_f32_e32 v21, v21, v140
	v_mul_f32_e32 v22, v22, v140
	v_mul_f32_e32 v23, v23, v140
	v_mul_f32_e32 v9, v9, v140
	v_mul_f32_e32 v10, v10, v140
	v_mul_f32_e32 v11, v11, v140
	v_mul_f32_e32 v12, v12, v140
	v_mul_f32_e32 v13, v13, v140
	v_mul_f32_e32 v14, v14, v140
	v_mul_f32_e32 v15, v15, v140
	v_mul_f32_e32 v16, v16, v140
	v_mul_f32_e32 v1, v1, v140
	v_mul_f32_e32 v2, v2, v140
	v_mul_f32_e32 v3, v3, v140
	v_mul_f32_e32 v4, v4, v140
	v_mul_f32_e32 v5, v5, v140
	v_mul_f32_e32 v6, v6, v140
	v_mul_f32_e32 v7, v7, v140
	v_mul_f32_e32 v8, v8, v140
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[173:180], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[243:250], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v236, v228 offset:2336
	ds_load_u16_d16 v237, v228 offset:2592
	ds_load_u16_d16 v238, v228 offset:2848
	ds_load_u16_d16 v239, v228 offset:3104
	ds_load_u16_d16 v240, v228 offset:3360
	ds_load_u16_d16 v241, v228 offset:3616
	ds_load_u16_d16 v242, v228 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v235, v228 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v196, v228 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[132:139], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v122, v129
	v_sub_f32_e32 v65, v121, v129
	v_sub_f32_e32 v68, v124, v129
	v_sub_f32_e32 v67, v123, v129
	v_sub_f32_e32 v70, v126, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v125, v129
	v_sub_f32_e32 v72, v128, v129
	v_sub_f32_e32 v71, v127, v129
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v133, v228 offset:2560
	ds_load_u16_d16 v157, v228 offset:2624
	ds_load_u16_d16 v134, v228 offset:2816
	ds_load_u16_d16 v158, v228 offset:2880
	ds_load_u16_d16 v135, v228 offset:3072
	ds_load_u16_d16 v159, v228 offset:3136
	ds_load_u16_d16 v136, v228 offset:3328
	ds_load_u16_d16 v160, v228 offset:3392
	ds_load_u16_d16 v137, v228 offset:3584
	ds_load_u16_d16 v161, v228 offset:3648
	ds_load_u16_d16 v138, v228 offset:3840
	ds_load_u16_d16 v132, v228 offset:2304
	ds_load_u16_d16_hi v131, v228 offset:2176
	ds_load_u16_d16_hi v156, v228 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v133, v228 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v157, v228 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v134, v228 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v158, v228 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v135, v228 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v159, v228 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v136, v228 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v160, v228 offset:3520
	ds_load_u16_d16 v162, v228 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v137, v228 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v161, v228 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v138, v228 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v132, v228 offset:2432
	ds_load_u16_d16 v197, v228 offset:2400
	ds_load_u16_d16 v198, v228 offset:2656
	ds_load_u16_d16 v199, v228 offset:2912
	ds_load_u16_d16 v200, v228 offset:3168
	ds_load_u16_d16 v201, v228 offset:3424
	ds_load_u16_d16 v202, v228 offset:3680
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s57
	v_cndmask_b32_e64 v65, 0, v65, s58
	v_cndmask_b32_e64 v68, 0, v68, s56
	v_cndmask_b32_e64 v67, 0, v67, s55
	v_cndmask_b32_e64 v70, 0, v70, s53
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v130.l, v66.h
	v_cmp_o_f32_e64 s57, v66, v66
	v_cmp_o_f32_e64 s58, v65, v65
	v_cmp_o_f32_e64 s56, v68, v68
	v_cmp_o_f32_e64 s55, v67, v67
	v_and_b32_e32 v121, 1, v130
	v_mov_b16_e64 v130.l, v68.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s53, v70, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v121, v66, v121, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v130.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s57
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s54
	v_cndmask_b32_e64 v72, 0, v72, s52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s54, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s51
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s52, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v121.l, 0x7fff, v66.h, s58
	v_cmp_o_f32_e64 s51, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v121, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v121, v212
	v_perm_b32 v66, v66, v121, v213
	v_and_b32_e32 v121, 1, v130
	v_mov_b16_e64 v130.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v121, v68, v121, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v130.h
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v121.l, 0x7fff, v68.h, s55
	v_permlanex16_b32 v68, v121, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v68, v121, v212
	v_perm_b32 v68, v68, v121, v213
	v_and_b32_e32 v121, 1, v130
	v_mov_b16_e64 v130.l, v72.h
	v_add3_u32 v121, v70, v121, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v130.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s53
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cndmask_b16 v121.l, 0x7fff, v70.h, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v121, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v121, v212
	v_perm_b32 v70, v70, v121, v213
	v_and_b32_e32 v121, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v121, v72, v121, 0x7fff
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e64 v72.h, v130.h
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v121.l, 0x7fff, v72.h, s51
	v_permlanex16_b32 v72, v121, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v121, v212
	v_perm_b32 v72, v72, v121, v213
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v162, v228 offset:4032
	ds_load_u16_d16 v121, v228 offset:4096
	ds_load_u16_d16 v173, v228 offset:4160
	ds_load_u16_d16 v203, v228 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v236, v228 offset:2464
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v197, v228 offset:2528
	ds_load_u16_d16_hi v237, v228 offset:2720
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v198, v228 offset:2784
	ds_load_u16_d16_hi v238, v228 offset:2976
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v199, v228 offset:3040
	ds_load_u16_d16_hi v239, v228 offset:3232
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v200, v228 offset:3296
	ds_load_u16_d16_hi v240, v228 offset:3488
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v201, v228 offset:3552
	ds_load_u16_d16_hi v241, v228 offset:3744
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v202, v228 offset:3808
	ds_load_u16_d16_hi v242, v228 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v203, v228 offset:4064
	ds_load_u16_d16 v174, v228 offset:4416
	ds_load_u16_d16_hi v173, v228 offset:4288
	ds_load_u16_d16 v131, v228 offset:4128
	ds_load_u16_d16 v243, v228 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[155:162], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v123, v228 offset:4608
	ds_load_u16_d16 v175, v228 offset:4672
	ds_load_u16_d16 v124, v228 offset:4864
	ds_load_u16_d16 v176, v228 offset:4928
	ds_load_u16_d16 v125, v228 offset:5120
	ds_load_u16_d16 v177, v228 offset:5184
	ds_load_u16_d16 v126, v228 offset:5376
	ds_load_u16_d16 v178, v228 offset:5440
	ds_load_u16_d16 v127, v228 offset:5632
	ds_load_u16_d16 v179, v228 offset:5696
	ds_load_u16_d16 v128, v228 offset:5888
	ds_load_u16_d16 v122, v228 offset:4352
	ds_load_u16_d16_hi v121, v228 offset:4224
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v174, v228 offset:4544
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[235:242], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[196:203], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v114, v129
	v_sub_f32_e32 v65, v113, v129
	v_sub_f32_e32 v68, v116, v129
	v_sub_f32_e32 v67, v115, v129
	v_sub_f32_e32 v70, v118, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v120, v129
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v123, v228 offset:4736
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v175, v228 offset:4800
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v124, v228 offset:4992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v176, v228 offset:5056
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v125, v228 offset:5248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v177, v228 offset:5312
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v126, v228 offset:5504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v178, v228 offset:5568
	ds_load_u16_d16 v180, v228 offset:5952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v127, v228 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v179, v228 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v128, v228 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v122, v228 offset:4480
	ds_load_u16_d16 v244, v228 offset:4448
	ds_load_u16_d16 v245, v228 offset:4704
	ds_load_u16_d16 v246, v228 offset:4960
	ds_load_u16_d16 v247, v228 offset:5216
	ds_load_u16_d16 v248, v228 offset:5472
	ds_load_u16_d16 v249, v228 offset:5728
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s49
	v_cndmask_b32_e64 v65, 0, v65, s50
	v_cndmask_b32_e64 v68, 0, v68, s48
	v_cndmask_b32_e64 v67, 0, v67, s47
	v_cndmask_b32_e64 v70, 0, v70, s44
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v130.l, v66.h
	v_cmp_o_f32_e64 s49, v66, v66
	v_cmp_o_f32_e64 s50, v65, v65
	v_cmp_o_f32_e64 s48, v68, v68
	v_cmp_o_f32_e64 s47, v67, v67
	v_and_b32_e32 v113, 1, v130
	v_mov_b16_e64 v130.l, v68.h
	v_cmp_o_f32_e64 s44, v70, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v132, v228 offset:4384
	ds_load_u16_d16 v133, v228 offset:4640
	ds_load_u16_d16 v134, v228 offset:4896
	ds_load_u16_d16 v135, v228 offset:5152
	ds_load_u16_d16 v136, v228 offset:5408
	ds_load_u16_d16 v137, v228 offset:5664
	ds_load_u16_d16 v138, v228 offset:5920
	ds_load_u16_d16_hi v131, v228 offset:4256
	ds_load_u16_d16_hi v243, v228 offset:4320
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v113, v66, v113, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v130.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v117, v129
	v_mov_b32_e32 v235, v129
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v66.h, s50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s45
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v66, v113, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v69, v69
	v_perm_b32 v65, v66, v113, v212
	v_perm_b32 v66, v66, v113, v213
	v_and_b32_e32 v113, 1, v130
	v_mov_b16_e64 v130.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v113, v68, v113, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v130.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v119, v129
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v68, 1, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v68.h, s47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v68, v113, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v71, v71
	v_perm_b32 v67, v68, v113, v212
	v_perm_b32 v68, v68, v113, v213
	v_and_b32_e32 v113, 1, v130
	v_mov_b16_e64 v130.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v113, v70, v113, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v130.h
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s44
	v_cmp_o_f32_e64 s44, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v69, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v113.l, 0x7fff, v70.h, s45
	v_permlanex16_b32 v70, v113, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v70, v113, v212
	v_perm_b32 v70, v70, v113, v213
	v_and_b32_e32 v113, 1, v130
	v_add3_u32 v113, v72, v113, 0x7fff
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e64 v72.h, v130.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s44
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v71, v72, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v72.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v72, v113, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v113, v212
	v_perm_b32 v72, v72, v113, v213
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v180, v228 offset:6080
	ds_load_u16_d16 v113, v228 offset:6144
	ds_load_u16_d16 v155, v228 offset:6208
	ds_load_u16_d16 v250, v228 offset:5984
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[121:128], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v132, v228 offset:4512
	ds_load_u16_d16_hi v244, v228 offset:4576
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v133, v228 offset:4768
	ds_load_u16_d16_hi v245, v228 offset:4832
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v134, v228 offset:5024
	ds_load_u16_d16_hi v246, v228 offset:5088
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v135, v228 offset:5280
	ds_load_u16_d16_hi v247, v228 offset:5344
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v136, v228 offset:5536
	ds_load_u16_d16_hi v248, v228 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v137, v228 offset:5792
	ds_load_u16_d16_hi v249, v228 offset:5856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v138, v228 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v250, v228 offset:6112
	ds_load_u16_d16 v156, v228 offset:6464
	ds_load_u16_d16_hi v155, v228 offset:6336
	ds_load_u16_d16 v121, v228 offset:6176
	ds_load_u16_d16 v196, v228 offset:6240
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[173:180], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v115, v228 offset:6656
	ds_load_u16_d16 v157, v228 offset:6720
	ds_load_u16_d16 v116, v228 offset:6912
	ds_load_u16_d16 v158, v228 offset:6976
	ds_load_u16_d16 v117, v228 offset:7168
	ds_load_u16_d16 v159, v228 offset:7232
	ds_load_u16_d16 v118, v228 offset:7424
	ds_load_u16_d16 v160, v228 offset:7488
	ds_load_u16_d16 v119, v228 offset:7680
	ds_load_u16_d16 v161, v228 offset:7744
	ds_load_u16_d16 v120, v228 offset:7936
	ds_load_u16_d16 v114, v228 offset:6400
	ds_load_u16_d16_hi v113, v228 offset:6272
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v156, v228 offset:6592
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[131:138], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[243:250], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v90, v129
	v_sub_f32_e32 v65, v89, v129
	v_sub_f32_e32 v68, v92, v129
	v_sub_f32_e32 v67, v91, v129
	v_sub_f32_e32 v70, v94, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v96, v129
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v115, v228 offset:6784
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v157, v228 offset:6848
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v116, v228 offset:7040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v158, v228 offset:7104
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v117, v228 offset:7296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v159, v228 offset:7360
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v118, v228 offset:7552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v160, v228 offset:7616
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v119, v228 offset:7808
	ds_load_u16_d16 v162, v228 offset:8000
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v161, v228 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v120, v228 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v114, v228 offset:6528
	ds_load_u16_d16 v197, v228 offset:6496
	ds_load_u16_d16 v198, v228 offset:6752
	ds_load_u16_d16 v199, v228 offset:7008
	ds_load_u16_d16 v200, v228 offset:7264
	ds_load_u16_d16 v201, v228 offset:7520
	ds_load_u16_d16 v202, v228 offset:7776
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s41
	v_cndmask_b32_e64 v65, 0, v65, s42
	v_cndmask_b32_e64 v68, 0, v68, s40
	v_cndmask_b32_e64 v67, 0, v67, s39
	v_cndmask_b32_e64 v70, 0, v70, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v130.l, v66.h
	v_cmp_o_f32_e64 s41, v66, v66
	v_cmp_o_f32_e64 s42, v65, v65
	v_cmp_o_f32_e64 s40, v68, v68
	v_cmp_o_f32_e64 s39, v67, v67
	v_and_b32_e32 v89, 1, v130
	v_mov_b16_e64 v130.l, v68.h
	v_cmp_o_f32_e64 s37, v70, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v162, v228 offset:8128
	ds_load_u16_d16 v203, v228 offset:8032
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v66, v89, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v130.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v93, v129
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v122, v228 offset:6432
	ds_load_u16_d16 v123, v228 offset:6688
	ds_load_u16_d16 v124, v228 offset:6944
	ds_load_u16_d16 v125, v228 offset:7200
	ds_load_u16_d16 v126, v228 offset:7456
	ds_load_u16_d16 v127, v228 offset:7712
	ds_load_u16_d16 v128, v228 offset:7968
	ds_load_u16_d16_hi v121, v228 offset:6304
	ds_load_u16_d16_hi v196, v228 offset:6368
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s41
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v122, v228 offset:6560
	ds_load_u16_d16_hi v197, v228 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v123, v228 offset:6816
	ds_load_u16_d16_hi v198, v228 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v124, v228 offset:7072
	ds_load_u16_d16_hi v199, v228 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v125, v228 offset:7328
	ds_load_u16_d16_hi v200, v228 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v126, v228 offset:7584
	ds_load_u16_d16_hi v201, v228 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v127, v228 offset:7840
	ds_load_u16_d16_hi v202, v228 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v128, v228 offset:8096
	ds_load_u16_d16_hi v203, v228 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s36
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v90, v73, v73
	v_max_f32_e32 v91, v77, v77
.Ltmp7:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v65, v66, 0x7fff
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v92, v103, v99, v104
.Ltmp9:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s36, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v90, v91, v90
.Ltmp11:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v66.h, s42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s38
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v91, v74, v79, v75
.Ltmp13:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v66, v89, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s38, v69, v69
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v90, v90, v78, v91
	v_max3_f32 v91, v97, v102, v98
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v65, v66, v89, v212
	v_perm_b32 v66, v66, v89, v213
	v_and_b32_e32 v89, 1, v130
	v_mov_b16_e64 v130.l, v70.h
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v91, v91, v92, v100
	v_max3_f32 v92, v80, v76, v101
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp17:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v68, v89, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v130.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v95, v129
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v90, v90, v92, v91
.Ltmp19:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 1, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v91, v90
.Ltmp21:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v68.h, s39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s35
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v91, v91, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v68, v89, s99, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s35, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v90, v90, v91
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v67, v68, v89, v212
	v_perm_b32 v68, v68, v89, v213
	v_and_b32_e32 v89, 1, v130
	v_mov_b16_e64 v130.l, v72.h
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v70, v89, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v130.h
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s37
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v91, v91, v91 :: v_dual_and_b32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v70, v69, v70, 0x7fff
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v90, v90, v91
.Ltmp35:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v91, v230, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v89.l, 0x7fff, v70.h, s38
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v230, v91, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v70, v89, s99, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v79, v79, v230
	v_sub_f32_e32 v80, v80, v230
	v_sub_f32_e32 v76, v76, v230
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v69, v70, v89, v212
	v_perm_b32 v70, v70, v89, v213
	v_and_b32_e32 v89, 1, v130
	v_mov_b16_e64 v130.l, v71.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v78, v230
	v_sub_f32_e32 v74, v74, v230
	v_sub_f32_e32 v92, v102, v230
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v72, v89, 0x7fff
	v_and_b32_e32 v72, 1, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s36
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v89.l, 0x7fff, v72.h, s35
	v_permlanex16_b32 v72, v89, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v71, v72, v89, v212
	v_perm_b32 v72, v72, v89, v213
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[113:120], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[155:162], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[196:203], v[65:72], v[1:8]
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v81, v81
	v_max_f32_e32 v66, v85, v85
	v_max3_f32 v67, v111, v107, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v66, v82, v87, v83
	v_max3_f32 v65, v65, v86, v66
	v_max3_f32 v66, v105, v110, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v67, v108
	v_max3_f32 v67, v88, v84, v109
	v_max3_f32 v65, v65, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v67, v65, v66
.Ltmp41:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v229, v65, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v85, v229
	v_sub_f32_e32 v70, v81, v229
	v_sub_f32_e32 v66, v86, v229
	v_sub_f32_e32 v86, v105, v229
	v_sub_f32_e32 v69, v88, v229
	v_sub_f32_e32 v88, v107, v229
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v82, v229
	v_sub_f32_e32 v81, v84, v229
	v_sub_f32_e32 v84, v111, v229
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v87, v229
	v_sub_f32_e32 v72, v83, v229
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v82, v109, v229
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s16
	v_cndmask_b32_e64 v70, 0, v70, s33
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v110, v229
	v_sub_f32_e32 v87, v106, v229
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s14
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v70
.Ltmp43:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v71
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v85, v112, v229
	v_sub_f32_e32 v89, v108, v229
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s30
	v_cndmask_b32_e64 v71, 0, v71, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp45:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v72
	v_exp_f32_e32 v72, v87
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp47:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s28
	v_cndmask_b32_e64 v72, 0, v72, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp49:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v81
	v_exp_f32_e32 v81, v88
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v81, 0, v81, s20
.Ltmp50:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp51:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v82
	v_exp_f32_e32 v82, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v75, v75, v230 :: v_dual_add_f32 v66, v68, v69
.Ltmp52:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp53:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s8
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v77, v77, v230
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp54:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp55:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v83
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v94, v104, v230 :: v_dual_add_f32 v71, v71, v72
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v84
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v91, v101, v230 :: v_dual_add_f32 v68, v70, v71
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v73, v73, v230 :: v_dual_add_f32 v72, v72, v81
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v71, v73
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s1
	v_cndmask_b32_e64 v71, 0, v71, s34
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v93, v103, v230
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s29
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v234
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v81, v82
.Ltmp57:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v98, v230
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp59:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v72, v81
.Ltmp61:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v74
	v_exp_f32_e32 v74, v76
	v_exp_f32_e32 v76, v96
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp63:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v68
.Ltmp65:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s31
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v98, v100, v230
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v74, s27
	v_cndmask_b32_e64 v76, 0, v76, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v68, v65 :: v_dual_add_f32 v71, v71, v72
.Ltmp67:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v79
	v_exp_f32_e32 v78, v98
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v66, v70, v71 :: v_dual_add_f32 v65, v65, v68
.Ltmp70:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s13
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v95, v97, v230
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s19
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v72, v72, v73
.Ltmp72:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v75, v95
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v75, 0, v75, s25
.Ltmp73:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp74:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v72, v73
.Ltmp76:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v74, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v97, v99, v230 :: v_dual_add_f32 v74, v74, v75
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v92
	v_exp_f32_e32 v77, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s7
	v_cndmask_b32_e64 v77, 0, v77, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v75, v75, v76
.Ltmp78:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v93
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v71, v74, v75
	v_add_f32_e32 v66, v66, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s6
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v76, v76, v77
.Ltmp82:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s3
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v72, v76, v77
	v_add_f32_e32 v69, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v66, v66, v69
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v65, v65, v68 :: v_dual_max_f32 v68, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v67, v68, v67
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v69, v66
.Ltmp90:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v68, v234, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v234, v67
.Ltmp92:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v69
.Ltmp94:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v68, 0, v68, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v65, v233, v68
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v68, v232, v232
	v_dual_max_f32 v68, v68, v90 :: v_dual_mov_b32 v233, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v69, v232, v68
	v_mov_b32_e32 v232, v68
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v69, 0, v69, s1
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v66, v231, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v231, v66
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_70
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s100, s93, s91
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v120, s75 :: v_dual_add_nc_u32 v81, 0, v146
	v_mad_u64_u32 v[65:66], null, s100, s90, v[145:146]
	v_dual_mov_b32 v119, s74 :: v_dual_mov_b32 v118, s73
	v_dual_mov_b32 v117, s72 :: v_dual_mov_b32 v116, s71
	v_dual_mov_b32 v115, s70 :: v_dual_mov_b32 v114, s69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v67, v65, s96, 1
	v_lshlrev_b32_e32 v66, 1, v65
	v_add_lshl_u32 v68, v65, s92, 1
	v_add_lshl_u32 v65, v65, s97, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v113, s68
	.loc	1 658 32                        ; attention.py:658:32
	v_dual_cndmask_b32 v69, 0x80000000, v67 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v73, 0x80000000, v68, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v65, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[65:68], v66, s[80:83], 0 offen
	buffer_load_b128 v[69:72], v69, s[80:83], 0 offen
	buffer_load_b128 v[73:76], v73, s[80:83], 0 offen
	buffer_load_b128 v[77:80], v77, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s98, s93
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v214, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v214, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v214, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v214, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v215
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v215 offset:2048
	ds_load_b128 v[101:104], v215 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v215 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[57:64], v[113:120]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v217
	ds_load_b128 v[97:100], v216
	ds_load_b128 v[105:108], v216 offset:2048
	ds_load_b128 v[109:112], v217 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v217 offset:4096
	ds_load_b128 v[97:100], v216 offset:4096
	ds_load_b128 v[105:108], v216 offset:6144
	ds_load_b128 v[109:112], v217 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[49:56], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v219
	ds_load_b128 v[97:100], v218
	ds_load_b128 v[105:108], v218 offset:2048
	ds_load_b128 v[109:112], v219 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v219 offset:4096
	ds_load_b128 v[97:100], v218 offset:4096
	ds_load_b128 v[105:108], v218 offset:6144
	ds_load_b128 v[109:112], v219 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[41:48], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v221
	ds_load_b128 v[97:100], v220
	ds_load_b128 v[105:108], v220 offset:2048
	ds_load_b128 v[109:112], v221 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[33:40], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[33:40], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v221 offset:4096
	ds_load_b128 v[97:100], v220 offset:4096
	ds_load_b128 v[105:108], v220 offset:6144
	ds_load_b128 v[109:112], v221 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[33:40], v[81:88]
	v_mov_b16_e32 v97.l, 0
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[73:80]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v107, s93, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.l, v97.l
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v107, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v107, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s7, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v98, s4, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v99, 31, v98
	v_add_co_u32 v98, s1, s78, v98
	v_add_co_ci_u32_e64 v99, null, s79, v99, s1
	.loc	1 681 34                        ; attention.py:681:34
	global_load_d16_u8 v98, v[98:99], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 1, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v109, s93, v99
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v109, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v109, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s23
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v97, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s4, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v100, 31, v97
	v_add_co_u32 v99, s1, s78, v97
	v_add_co_ci_u32_e64 v100, null, s79, v100, s1
	global_load_d16_u8 v97, v[99:100], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 2, v151
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v97.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v108, s93, v99
	v_mov_b16_e32 v99.l, v97.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v108, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v108, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s9, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v99, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s4, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, s1, s78, v99
	v_add_co_ci_u32_e64 v100, null, s79, v100, s1
	global_load_d16_u8 v99, v[99:100], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v100, 3, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v111, s93, v100
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v111, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v111, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s25
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v100, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s1, s78, v100
	v_add_co_ci_u32_e64 v101, null, s79, v101, s1
	global_load_d16_hi_u8 v97, v[100:101], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v100, 4, v151
	v_mov_b16_e32 v98.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v110, s93, v100
	v_mov_b16_e32 v100.l, v98.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v110, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v110, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s11, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v100, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s4, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s1, s78, v100
	v_add_co_ci_u32_e64 v101, null, s79, v101, s1
	global_load_d16_u8 v100, v[100:101], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v101, 5, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v113, s93, v101
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v113, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v113, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s4, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, s1, s78, v101
	v_add_co_ci_u32_e64 v102, null, s79, v102, s1
	global_load_d16_hi_u8 v98, v[101:102], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v112, s93, v254
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v112, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v112, v171
	v_mov_b16_e32 v101.l, v99.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s10, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v101, s4, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, s1, s78, v101
	v_add_co_ci_u32_e64 v102, null, s79, v102, s1
	global_load_d16_u8 v101, v[101:102], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v115, s93, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v115, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v115, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s26, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, s1, s78, v102
	v_add_co_ci_u32_e64 v103, null, s79, v103, s1
	global_load_d16_hi_u8 v99, v[102:103], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v114, s93, v152
	v_mov_b16_e32 v100.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v114, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v114, v171
	v_mov_b16_e32 v103.l, v100.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, s1, s78, v102
	v_add_co_ci_u32_e64 v103, null, s79, v103, s1
	global_load_d16_u8 v103, v[102:103], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v117, s93, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v117, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v117, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s24, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s24
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v105, 31, v102
	v_add_co_u32 v104, s1, s78, v102
	v_add_co_ci_u32_e64 v105, null, s79, v105, s1
	global_load_d16_hi_u8 v100, v[104:105], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v116, s93, v163
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v116, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v116, v171
	v_mov_b16_e32 v104.h, v101.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s5
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v105, 31, v102
	v_add_co_u32 v104, s1, s78, v102
	v_add_co_ci_u32_e64 v105, null, s79, v105, s1
	global_load_d16_hi_u8 v104, v[104:105], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v119, s93, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v119, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v119, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s21, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v106, 31, v102
	v_add_co_u32 v105, s1, s78, v102
	v_add_co_ci_u32_e64 v106, null, s79, v106, s1
	global_load_d16_hi_u8 v101, v[105:106], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v118, s93, v165
	v_mov_b16_e32 v102.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v118, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v118, v171
	v_mov_b16_e32 v105.l, v102.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s12
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v105, s4, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v106, 31, v105
	v_add_co_u32 v105, s1, s78, v105
	v_add_co_ci_u32_e64 v106, null, s79, v106, s1
	global_load_d16_u8 v105, v[105:106], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v121, s93, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v121, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v121, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s28, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s28
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v102, s4, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v106, 31, v102
	v_add_co_u32 v122, s1, s78, v102
	v_add_co_ci_u32_e64 v123, null, s79, v106, s1
	global_load_d16_u8 v102, v[122:123], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v120, s93, v167
	v_mov_b16_e32 v103.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v120, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v120, v171
	v_mov_b16_e32 v106.h, v103.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s13
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v106, s4, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v123, 31, v106
	v_add_co_u32 v122, s1, s78, v106
	v_add_co_ci_u32_e64 v123, null, s79, v123, s1
	global_load_d16_hi_u8 v106, v[122:123], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v122, s93, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v122, v169
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v122, v171
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s29, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s29
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v123, s4, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v124, 31, v123
	v_add_co_u32 v123, s1, s78, v123
	v_add_co_ci_u32_e64 v124, null, s79, v124, s1
	global_load_d16_hi_u8 v103, v[123:124], off
.LBB0_38:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v107, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v107, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v106.l, v102.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s18, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v107, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v124, 31, v107
	v_add_co_u32 v123, s1, s78, v107
	v_add_co_ci_u32_e64 v124, null, s79, v124, s1
	global_load_d16_u8 v106, v[123:124], off
.LBB0_40:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v109, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v109, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s35
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v107, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v109, 31, v107
	v_add_co_u32 v123, s1, s78, v107
	v_add_co_ci_u32_e64 v124, null, s79, v109, s1
	global_load_d16_hi_u8 v102, v[123:124], off
.LBB0_42:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v104.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v108, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v108, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v107.h, v104.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s19, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s19
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v107, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v107, s1, s78, v107
	v_add_co_ci_u32_e64 v108, null, s79, v108, s1
	global_load_d16_hi_u8 v107, v[107:108], off
.LBB0_44:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v111, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v111, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s36
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v108, s4, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, s1, s78, v108
	v_add_co_ci_u32_e64 v109, null, s79, v109, s1
	global_load_d16_u8 v104, v[108:109], off
.LBB0_46:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v105.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v110, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v110, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v108.l, v105.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s15, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s15
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v108, s4, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v109, 31, v108
	v_add_co_u32 v108, s1, s78, v108
	v_add_co_ci_u32_e64 v109, null, s79, v109, s1
	global_load_d16_u8 v108, v[108:109], off
.LBB0_48:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v113, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v113, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v109, s4, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v110, 31, v109
	v_add_co_u32 v109, s1, s78, v109
	v_add_co_ci_u32_e64 v110, null, s79, v110, s1
	global_load_d16_hi_u8 v105, v[109:110], off
.LBB0_50:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v107.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v112, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v112, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v109.l, v107.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s17, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s17
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v109, s4, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v110, 31, v109
	v_add_co_u32 v109, s1, s78, v109
	v_add_co_ci_u32_e64 v110, null, s79, v110, s1
	global_load_d16_u8 v109, v[109:110], off
.LBB0_52:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v115, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v115, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s34
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v110, s4, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v111, 31, v110
	v_add_co_u32 v110, s1, s78, v110
	v_add_co_ci_u32_e64 v111, null, s79, v111, s1
	global_load_d16_u8 v107, v[110:111], off
.LBB0_54:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v108.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v114, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v114, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v110.h, v108.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s20, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s20
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v110, s4, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v111, 31, v110
	v_add_co_u32 v110, s1, s78, v110
	v_add_co_ci_u32_e64 v111, null, s79, v111, s1
	global_load_d16_hi_u8 v110, v[110:111], off
.LBB0_56:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v117, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v117, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s37
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v111, s4, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v112, 31, v111
	v_add_co_u32 v111, s1, s78, v111
	v_add_co_ci_u32_e64 v112, null, s79, v112, s1
	global_load_d16_hi_u8 v108, v[111:112], off
.LBB0_58:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v109.h, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v116, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v116, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v111.h, v109.h
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s22, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s22
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v111, s4, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v112, 31, v111
	v_add_co_u32 v111, s1, s78, v111
	v_add_co_ci_u32_e64 v112, null, s79, v112, s1
	global_load_d16_hi_u8 v111, v[111:112], off
.LBB0_60:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v119, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v119, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s38
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v112, s4, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v113, 31, v112
	v_add_co_u32 v112, s1, s78, v112
	v_add_co_ci_u32_e64 v113, null, s79, v113, s1
	global_load_d16_hi_u8 v109, v[112:113], off
.LBB0_62:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v110.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v118, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v118, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v112.l, v110.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s30, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s30
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v112, s4, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v113, 31, v112
	v_add_co_u32 v112, s1, s78, v112
	v_add_co_ci_u32_e64 v113, null, s79, v113, s1
	global_load_d16_u8 v112, v[112:113], off
.LBB0_64:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v121, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v121, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s39, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s39
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v113, s4, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s1
	global_load_d16_u8 v110, v[113:114], off
.LBB0_66:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v111.l, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v120, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v120, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v112.h, v111.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_and_b32 s33, s2, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s33
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v113, s4, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s1
	global_load_d16_hi_u8 v112, v[113:114], off
.LBB0_68:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v122, v170
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v122, v172
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s40, s2, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s3, s40
	s_cbranch_execz .LBB0_5
; %bb.69:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v113, s4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s1, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s1
	global_load_d16_u8 v111, v[113:114], off
	s_branch .LBB0_5
.LBB0_70:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b32 v34, off, off offset:36 ; 4-byte Folded Reload
	v_and_b32_e32 v69, 16, v0
	v_lshlrev_b32_e32 v70, 2, v0
	v_and_b32_e32 v71, 15, v0
	v_and_b32_e32 v72, 0x60, v0
.LBB0_71:                               ; %Flow381
	v_and_b32_e32 v33, 0x7c, v0
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v35, 0x80, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, 0, v34
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v33, v33, 1, 0
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	.loc	1 629 13                        ; attention.py:629:13
	ds_store_b64 v33, v[65:66]
	v_add3_u32 v0, v34, v35, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v69
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v72
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v71
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s89, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s67, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s88, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v43, s2, v27, v37, v27
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_fma_f32 v57, -v44, v49, 1.0
	v_div_scale_f32 v51, s4, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_mul_f32_e32 v56, v41, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v52, null, v37, v37, v30
	v_fma_f32 v61, -v38, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v57, v43, v48
	v_rcp_f32_e32 v58, v52
	v_div_scale_f32 v45, s3, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_fmac_f32 v56, v62, v47
	v_fma_f32 v63, -v42, v57, v43
	v_div_scale_f32 v50, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v63, v48
	v_fma_f32 v60, -v52, v58, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v38, v37, v25
	v_fmac_f32_e32 v58, v60, v58
	v_fma_f32 v64, -v44, v59, v45
	v_rcp_f32_e32 v38, v42
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v39, v39, v47, v56
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v43, null, v37, v37, v32
	v_div_fmas_f32 v40, v40, v48, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s2, v30, v37, v30
	v_fma_f32 v46, -v42, v38, 1.0
	v_fmac_f32_e32 v59, v64, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v54, -v50, v53, 1.0
	v_div_fixup_f32 v27, v40, v37, v27
	v_fmac_f32_e32 v38, v46, v38
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	v_rcp_f32_e32 v47, v43
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s3, v31, v37, v31
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v45, v40, v58
	v_fma_f32 v46, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v54, v51, v53
	v_fma_f32 v39, -v52, v45, v39
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v50, v54, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v54, v44, v53
	v_div_scale_f32 v44, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v50, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v44
	v_fma_f32 v50, -v42, v40, v41
	v_mul_f32_e32 v51, v46, v47
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v44, v49, 1.0
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v50, -v43, v51, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_scale_f32 v52, s2, v17, v37, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v50, v47
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	v_div_scale_f32 v43, s3, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v31, v38, v37, v31
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v51, null, v37, v37, v21
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fmac_f32_e32 v47, v39, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s4, v19, v37, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v49, v41
	v_fma_f32 v50, -v46, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	v_div_scale_f32 v49, s2, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_mul_f32_e32 v52, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v54, -v51, v41, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_div_scale_f32 v45, s3, v21, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v54, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v38, v37, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	v_fma_f32 v43, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s5, v22, v37, v22
	v_div_fmas_f32 v38, v38, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	s_delay_alu instid0(VALU_DEP_4)
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
	v_div_scale_f32 v38, s4, v9, v37, v9
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s4
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_fmac_f32_e32 v44, v48, v55
	v_div_scale_f32 v43, null, v37, v37, v15
	v_fma_f32 v48, -v42, v38, v46
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v53, v44, v40
	v_rcp_f32_e32 v49, v43
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v41, v37, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	v_fma_f32 v41, -v45, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v46, v49
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_div_scale_f32 v40, s2, v15, v37, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	v_div_scale_f32 v46, null, v37, v37, v2
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v38, s3, v16, v37, v16
	v_rcp_f32_e32 v52, v46
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s4, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
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
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s5, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v4
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v41, v42
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v44, -v51, v55, 1.0
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_scale_f32 v49, null, v37, v37, v8
	v_fmac_f32_e32 v55, v44, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_scale_f32 v44, s2, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v42, v52, v43
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v42, v46, 1.0
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v45, v44
	v_dual_mul_f32 v57, v53, v46 :: v_dual_mul_f32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v40, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	v_dual_fmac_f32 v57, v52, v46 :: v_dual_fmac_f32 v58, v39, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v39, -v42, v57, v53
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v27, 16, 1
	v_add3_u32 v38, v26, v38, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v27, v39, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v38.h, s5
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.l, 0x7fff, v37.h, s4
	v_add3_u32 v25, v28, v25, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v37, v31, 16, 1
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_add3_u32 v30, v31, v37, 0x7fff
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
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s5
	v_add3_u32 v22, v10, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s7
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s5
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v14, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s4
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_bfe_u32 v15, v3, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v2, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_bfe_u32 v1, v4, 16, 1
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
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s4
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v12, v7, 16, 1
	v_add3_u32 v2, v6, v2, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v3.h, 0x7fff, v14.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s4
	v_cmp_eq_u32_e64 s4, 0, v69
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
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s88, v35
	v_cmp_gt_i32_e64 s2, s88, v34
	v_cmp_gt_i32_e64 s1, s88, v33
	.loc	1 846 36                        ; attention.py:846:36
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
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s88, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v12, v14, v18, v21
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v10, v19, v21
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s3, s0, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_perm_b32 v14, v22, v20, v21
	v_perm_b32 v16, v23, v16, v21
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[76:79], 0 offen
	buffer_store_b128 v[5:8], v18, s[76:79], 0 offen
	buffer_store_b128 v[9:12], v19, s[76:79], 0 offen
	buffer_store_b128 v[13:16], v0, s[76:79], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_endpgm
.Ltmp95:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
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
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20276
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 103
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
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 44
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
