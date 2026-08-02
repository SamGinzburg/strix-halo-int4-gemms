	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_backward.py"
	.loc	1 523 0                         ; kda_backward.py:523:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x44
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp0:
	.loc	1 543 60 prologue_end           ; kda_backward.py:543:60
	v_lshrrev_b32_e32 v1, 1, v0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 566 54                        ; kda_backward.py:566:54
	s_ashr_i32 s3, s2, 31
	.loc	1 544 35                        ; kda_backward.py:544:35
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s17, s2, v[1:2]
	.loc	1 541 18                        ; kda_backward.py:541:18
	v_cmp_gt_i32_e32 vcc_lo, s16, v0
	.loc	1 544 27                        ; kda_backward.py:544:27
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s12, s4
	.loc	1 566 54                        ; kda_backward.py:566:54
	s_lshl_b64 s[4:5], s[2:3], 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 544 27                        ; kda_backward.py:544:27
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u8 v2, v1, s[12:15], 0 offen
	.loc	1 545 25                        ; kda_backward.py:545:25
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 566 54                        ; kda_backward.py:566:54
	s_add_u32 s6, s8, s4
	.loc	1 545 25                        ; kda_backward.py:545:25
	buffer_load_u8 v3, v1, s[12:15], 0 offen
	.loc	1 551 27                        ; kda_backward.py:551:27
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, 0
	.loc	1 566 54                        ; kda_backward.py:566:54
	v_mov_b32_e32 v1, 0
	s_addc_u32 s7, s9, s5
	.loc	1 569 50                        ; kda_backward.py:569:50
	s_add_u32 s4, s10, s4
	s_addc_u32 s5, s11, s5
	.loc	1 546 29                        ; kda_backward.py:546:29
	v_mov_b16_e32 v9.h, v3.h
	.loc	1 566 25                        ; kda_backward.py:566:25
	s_clause 0x1
	global_load_u16 v4, v1, s[6:7]
	global_load_u16 v5, v1, s[4:5]
	s_load_b256 s[4:11], s[0:1], 0x20
	.loc	1 583 37                        ; kda_backward.py:583:37
	s_mul_i32 s0, s16, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 582 27                        ; kda_backward.py:582:27
	v_add_lshl_u32 v1, s0, v0, 2
	v_dual_cndmask_b32 v6, 0x80000000, v1 :: v_dual_and_b32 v1, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 547 17                        ; kda_backward.py:547:17
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 582 27                        ; kda_backward.py:582:27
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s12, s4
	s_and_b32 s13, s5, 0xffff
	buffer_load_b32 v7, v6, s[12:15], 0 offen
	.loc	1 587 25                        ; kda_backward.py:587:25
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	buffer_load_b32 v8, v6, s[12:15], 0 offen
	.loc	1 614 9                         ; kda_backward.py:614:9
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 548 17                        ; kda_backward.py:548:17
	v_and_b16 v1.l, v2.l, 15
	.loc	1 549 18                        ; kda_backward.py:549:18
	v_lshrrev_b16 v1.h, 4, v2.l
	.loc	1 553 17                        ; kda_backward.py:553:17
	v_and_b16 v2.l, v3.l, 15
	.loc	1 554 18                        ; kda_backward.py:554:18
	v_lshrrev_b16 v2.h, 4, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 546 29                        ; kda_backward.py:546:29
	v_cndmask_b16 v9.l, v1.h, v1.l, vcc_lo
	.loc	1 551 27                        ; kda_backward.py:551:27
	v_cndmask_b16 v3.l, v2.h, v2.l, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 558 17                        ; kda_backward.py:558:17
	v_or_b32_e32 v1, -16, v9
	.loc	1 557 17                        ; kda_backward.py:557:17
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.l
	.loc	1 566 25                        ; kda_backward.py:566:25
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 563 17                        ; kda_backward.py:563:17
	v_or_b32_e32 v2, -16, v3
	.loc	1 556 27                        ; kda_backward.py:556:27
	v_cndmask_b32_e32 v1, v9, v1, vcc_lo
	.loc	1 562 17                        ; kda_backward.py:562:17
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_lshrrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v0, 2, v0
.Ltmp2:
	.loc	1 561 25                        ; kda_backward.py:561:25
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v2, v3, v2 :: v_dual_lshlrev_b32 v3, 16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_and_b32_e32 v0, 12, v0
.Ltmp4:
	.loc	1 566 25                        ; kda_backward.py:566:25
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v2, v2, v3
	v_cvt_f32_i32_e32 v1, v1
	v_dual_mul_f32 v1, v1, v4 :: v_dual_mul_f32 v4, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_mov_b32_dpp v4, v4 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:598:25 ] ]
	v_dual_fmac_f32 v4, v2, v2 :: v_dual_mul_f32 v3, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v4, v4, v4 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_mov_b32_dpp v3, v3 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:598:25 ] ]
	v_add_f32_dpp v4, v4, v4 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v4, v4, v4 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_permlanex16_b32 v10, v4, -1, -1 op_sel:[1,0]
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_dual_fmac_f32 v3, v1, v1 :: v_dual_add_f32 v4, v4, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v3, v3, v3 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_readlane_b32 s1, v4, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_add_nc_u32_e32 v0, 0, v0
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_permlanex16_b32 v5, v3, -1, -1 op_sel:[1,0]
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_readlane_b32 s0, v3, 31
	v_dual_mov_b32 v4, s0 :: v_dual_and_b32 v5, 12, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v3, 0, v5
.Ltmp18:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_mov_b32_e32 v5, s1
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	ds_store_b32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v4, v0
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v3, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v5, v0
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_mov_b32_e32 v10, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:598:25 ] ]
	v_add_f32_e32 v5, v5, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_dual_mov_b32 v9, v4 :: v_dual_mov_b32 v10, v5
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:598:25 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_dual_add_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_mov_b32_e32 v9, v4
.Ltmp28:
	.loc	1 598 17                        ; kda_backward.py:598:17
	v_sqrt_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:594:25 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:594:25 ] ]
	v_add_f32_e32 v4, v4, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	1 597 24                        ; kda_backward.py:597:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 594 17                        ; kda_backward.py:594:17
	v_sqrt_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_div_scale_f32 v10, null, v5, v5, v2
	v_rcp_f32_e32 v12, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 593 26                        ; kda_backward.py:593:26
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_div_scale_f32 v9, null, v4, v4, v1
	v_div_scale_f32 v15, vcc_lo, v1, v4, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_fma_f32 v14, -v10, v12, 1.0
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_rcp_f32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_fmac_f32_e32 v12, v14, v12
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_fma_f32 v13, -v9, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v13, v11
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_div_scale_f32 v13, s0, v2, v5, v2
	v_mul_f32_e32 v16, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v10, v16, v13
	v_fmac_f32_e32 v16, v18, v12
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_mul_f32_e32 v14, v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_fma_f32 v10, -v10, v16, v13
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_fma_f32 v17, -v9, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v17, v11
	v_fma_f32 v9, -v9, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v11, v14
	.loc	1 602 24                        ; kda_backward.py:602:24
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v10, v10, v12, v16
	.loc	1 601 26                        ; kda_backward.py:601:26
	v_div_fixup_f32 v1, v9, v4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 602 24                        ; kda_backward.py:602:24
	v_div_fixup_f32 v2, v10, v5, v2
	.loc	1 605 39                        ; kda_backward.py:605:39
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v9, v7, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	v_mov_b32_dpp v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:605:32 ] ]
	v_fmac_f32_e32 v9, v7, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	v_permlanex16_b32 v11, v9, -1, -1 op_sel:[1,0]
.Ltmp35:
	.loc	1 609 37                        ; kda_backward.py:609:37
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v10, v8, v2 :: v_dual_add_f32 v9, v9, v11
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	v_mov_b32_dpp v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	v_readlane_b32 s0, v9, 31
	v_mov_b32_e32 v9, s0
	ds_store_b32 v3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v0
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:609:30 ] ]
	v_fmac_f32_e32 v10, v8, v2
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:609:30 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:609:30 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	v_readlane_b32 s1, v10, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v10, s1
	ds_store_b32 v3, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
.Ltmp44:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	v_mov_b32_e32 v3, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:605:32 ] ]
	v_add_f32_e32 v3, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:605:32 ]
	v_mov_b32_e32 v9, v3
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v10, v0 :: v_dual_add_f32 v3, v3, v9
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	1 604 17 is_stmt 1              ; kda_backward.py:604:17
	v_fma_f32 v1, -v1, v3, v7
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:609:30 ] ]
	v_add_f32_e32 v0, v0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_div_scale_f32 v11, vcc_lo, v1, v4, v1
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_backward.py:609:30 ]
	v_mov_b32_e32 v10, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_backward.py:609:30 ] ]
	v_add_f32_e32 v0, v0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	1 608 17                        ; kda_backward.py:608:17
	v_fma_f32 v0, -v2, v0, v8
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_div_scale_f32 v2, null, v4, v4, v1
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_div_scale_f32 v3, null, v5, v5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_rcp_f32_e32 v7, v2
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_rcp_f32_e32 v8, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_fma_f32 v9, -v2, v7, 1.0
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_fma_f32 v10, -v3, v8, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_fmac_f32_e32 v7, v9, v7
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_div_scale_f32 v9, s0, v0, v5, v0
	v_fmac_f32_e32 v8, v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_mul_f32_e32 v10, v11, v7
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_mul_f32_e32 v12, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_fma_f32 v13, -v2, v10, v11
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_fma_f32 v14, -v3, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_fmac_f32_e32 v10, v13, v7
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_fmac_f32_e32 v12, v14, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_fma_f32 v2, -v2, v10, v11
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_fma_f32 v3, -v3, v12, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_div_fmas_f32 v2, v2, v7, v10
	.loc	1 607 30                        ; kda_backward.py:607:30
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v3, v3, v8, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 603 32                        ; kda_backward.py:603:32
	v_div_fixup_f32 v1, v2, v4, v1
	.loc	1 607 30                        ; kda_backward.py:607:30
	v_div_fixup_f32 v0, v3, v5, v0
	.loc	1 614 9                         ; kda_backward.py:614:9
	buffer_store_b32 v1, v6, s[12:15], 0 offen
	.loc	1 619 9                         ; kda_backward.py:619:9
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	buffer_store_b32 v0, v6, s[12:15], 0 offen
	.loc	1 523 5                         ; kda_backward.py:523:5
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 96
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 19
		.amdhsa_next_free_sgpr 18
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
		.amdhsa_inst_pref_size 12
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
	.size	amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 19
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 18
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1496
; TotalNumSgprs: 20
; NumVgprs: 19
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 19
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	1                               ; Abbrev [1] 0xb:0xa4 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x7e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	594                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5c:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	598                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x69:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x77:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	605                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x84:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x92:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	609                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9f:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_backward.py"               ; string offset=7 ; kda_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=23 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=91 ; amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
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
      - .offset:         64
        .size:           4
        .value_kind:     by_value
      - .offset:         68
        .size:           4
        .value_kind:     by_value
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_bwd_norm_int4_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     19
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
